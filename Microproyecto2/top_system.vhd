library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.pkg_system.all;

entity Microproyecto2 is

-- Aquí definimos los pines físicos que van a la tarjeta: el reloj de 50MHz, el botón de reset, la entrada del sensor PIR, el LED de prueba y los 4 displays de 7 segmentos.
    port (
        CLOCK_50 : in  std_logic;
        rst      : in  std_logic;
        pir_in   : in  std_logic;

        LED_TEST : out std_logic;

        HEX0 : out std_logic_vector(6 downto 0);
        HEX1 : out std_logic_vector(6 downto 0);
        HEX2 : out std_logic_vector(6 downto 0);
        HEX3 : out std_logic_vector(6 downto 0)
    );
end entity Microproyecto2;


architecture rtl of Microproyecto2 is

    -- Aca pues estarian los cables internos para conectar todos los módulos entre sí
    signal pir_pulse_s : std_logic;
	 
    -- Pues en esta parte estarian los cables de la unidad de control, como los permisos por asi decirlo
    signal rom_addr_s  : addr_t;
    signal ram_addr_s  : addr_t;
    signal ram_wr_en_s : std_logic;
    signal ram_rd_en_s : std_logic;

    -- Estos seria los cables para los datos que salen de las memorias
    signal rom_data_s : data_t;
    signal ram_data_s : data_t;
	 
	 
    -- Variables para congelar y mostrar los datos en los displays sin que se muevan como locos
    signal ram_addr_display_s : addr_t := (others => '0');
    signal ram_data_display_s : data_t := (others => '0');

    signal ram_rd_en_d : std_logic := '0';
    signal data_valid_s : std_logic := '0';


    -- Una fuucioncita sencilla para convertir un número de 4 bits en los segmentos que prenden el display, es como un mini deco ahi
    function decodificar (
        dato : std_logic_vector(3 downto 0)
    ) return std_logic_vector is
    begin
        case dato is
            when "0000" => return "1000000"; -- 0
            when "0001" => return "1111001"; -- 1
            when "0010" => return "0100100"; -- 2
            when "0011" => return "0110000"; -- 3
            when "0100" => return "0011001"; -- 4
            when "0101" => return "0010010"; -- 5
            when "0110" => return "0000010"; -- 6
            when "0111" => return "1111000"; -- 7
            when "1000" => return "0000000"; -- 8
            when "1001" => return "0010000"; -- 9
            when "1010" => return "0001000"; -- A
            when "1011" => return "0000011"; -- b
            when "1100" => return "1000110"; -- C
            when "1101" => return "0100001"; -- d
            when "1110" => return "0000110"; -- E
            when "1111" => return "0001110"; -- F
            when others => return "1111111";
        end case;
    end function;

begin

   
    -- 1. CONTROLADOR DEL SENSOR PIR
    

    u_pir : entity work.pir_controller
        port map (
            clk       => CLOCK_50,
            rst       => rst,
            pir_in    => pir_in,
            LED_TEST  => LED_TEST,
            pir_pulse => pir_pulse_s
        );


    -- 2. UNIDAD DE CONTROL (FSM)
   

    u_control : entity work.control_unit
        port map (
            clk       => CLOCK_50,
            rst       => rst,
            pir_pulse => pir_pulse_s,
            rom_addr  => rom_addr_s,
            ram_addr  => ram_addr_s,
            ram_wr_en => ram_wr_en_s,
            ram_rd_en => ram_rd_en_s
        );


    
    -- 3. MEMORIA ROM
    

    u_rom : entity work.rom_memory
        generic map (
            DATA_WIDTH => DATA_WIDTH,
            ADDR_WIDTH => ADDR_WIDTH
        )
        port map (
            clk      => CLOCK_50,
            addr     => rom_addr_s,
            data_out => rom_data_s
        );


  
    -- 4. MEMORIA RAM
    

    u_ram : entity work.ram_memory
        generic map (
            DATA_WIDTH => DATA_WIDTH,
            ADDR_WIDTH => ADDR_WIDTH,
            RDW_MODE   => "READ_FIRST"
        )
        port map (
            clk      => CLOCK_50,
            addr     => ram_addr_s,
            data_in  => rom_data_s,
            data_out => ram_data_s,
            wr_en    => ram_wr_en_s,
            rd_en    => ram_rd_en_s
        );


    -- 5. REGISTROS PARA VISUALIZAR LOS DATOS
   

    process(CLOCK_50, rst)
    begin
	 
	 -- Si nos tiran un reset en cero, apagamos y dejamos todo en ceros limpio.
        if rst = '0' then

            ram_addr_display_s <= (others => '0');
            ram_data_display_s <= (others => '0');

            ram_rd_en_d <= '0';
            data_valid_s <= '0';

        elsif rising_edge(CLOCK_50) then

            -- Aca se vendria a registrar que se realizó una lectura de RAM
            ram_rd_en_d <= ram_rd_en_s;
				
				
            -- Si la RAM se mandó a leer, guardamos de una la dirección exacta en la que estábamos.
            if ram_rd_en_s = '1' then
                ram_addr_display_s <= ram_addr_s;
            end if;

            -- Ya cuando pasa el ciclo de retardo, atrapamos el dato que sale de la RAM y prendemos la alarma o la señal de que pues este ya es válido.
            if ram_rd_en_d = '1' then
                ram_data_display_s <= ram_data_s;
                data_valid_s <= '1';
            end if;

        end if;
    end process;


  
    -- 6. VISUALIZACIÓN EN LOS DISPLAYS
    

    process(ram_addr_display_s, ram_data_display_s, data_valid_s)
    begin

	 -- Si todavía no hay datos válidos cuando esta eaaranque como tal , apagamos los displays dejándolos en ceros para que no muestren basura.
        if data_valid_s = '0' then

            HEX3 <= decodificar("0000");
            HEX2 <= decodificar("0000");
            HEX1 <= decodificar("0000");
            HEX0 <= decodificar("0000");

        else

            -- HEX3: Estico muestra en qué dirección de la RAM estamos parados leyendo.
            HEX3 <= decodificar(ram_addr_display_s(3 downto 0));

            -- HEX2: Muestra la partecita más alta del dato de la memoria.
            HEX2 <= decodificar(
                std_logic_vector(resize(unsigned(ram_data_display_s(9 downto 8)), 4))
            );

            -- HEX1: Muestra los bits de la mitad del dato.
            HEX1 <= decodificar(ram_data_display_s(7 downto 4));

            -- HEX0: Muestra la parte baja del dato (los últimos bits).
            HEX0 <= decodificar(ram_data_display_s(3 downto 0));

        end if;

    end process;

end architecture rtl;