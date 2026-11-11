library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.pkg_system.all;

entity Microproyecto2 is
    port (
        CLOCK_50 : in  std_logic;
        rst      : in  std_logic;
        pir_in   : in  std_logic;

        LED_TEST : out std_logic;
		  --SW0 : in std_logic;

        HEX0 : out std_logic_vector(6 downto 0);
        HEX1 : out std_logic_vector(6 downto 0);
        HEX2 : out std_logic_vector(6 downto 0);
        HEX3 : out std_logic_vector(6 downto 0)
    );
end entity Microproyecto2;


architecture rtl of Microproyecto2 is

    -- Señales del controlador PIR
    signal pir_pulse_s : std_logic;

    -- Señales de la unidad de control
    signal rom_addr_s  : addr_t;
    signal ram_addr_s  : addr_t;
    signal ram_wr_en_s : std_logic;
    signal ram_rd_en_s : std_logic;

    -- Señales de la memoria ROM
    signal rom_data_s : data_t;

    -- Señales de la memoria RAM
    signal ram_data_s : data_t;

    -- Registros para la visualización
    signal ram_addr_display_s : addr_t := (others => '0');
    signal ram_data_display_s : data_t := (others => '0');

    signal ram_rd_en_d : std_logic := '0';
    signal data_valid_s : std_logic := '0';


    -- Decodificador para displays de siete segmentos
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

   
    -- CONTROLADOR DEL SENSOR PIR
   

  
		  
		  u_pir : entity work.pir_controller
    port map (
        clk       => CLOCK_50,
        rst       => rst,
        pir_in    =>pir_in ,
		  --pir_in    => SW0,
        LED_TEST  => LED_TEST,
        pir_pulse => pir_pulse_s
    );


   
    --  UNIDAD DE CONTROL (FSM)
  

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


    --  MEMORIA ROM


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


 
    --  MEMORIA RAM
   

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


  
    --  REGISTROS PARA VISUALIZAR LOS DATOS
   

    process(CLOCK_50, rst)
    begin
        if rst = '0' then

            ram_addr_display_s <= (others => '0');
            ram_data_display_s <= (others => '0');

            ram_rd_en_d <= '0';
            data_valid_s <= '0';

        elsif rising_edge(CLOCK_50) then

            -- Registrar que se realizó una lectura de RAM
            ram_rd_en_d <= ram_rd_en_s;

            -- Guardar la dirección correspondiente a la lectura
            if ram_rd_en_s = '1' then
                ram_addr_display_s <= ram_addr_s;
            end if;

            -- Capturar el dato después de la lectura síncrona
            if ram_rd_en_d = '1' then
                ram_data_display_s <= ram_data_s;
                data_valid_s <= '1';
            end if;

        end if;
    end process;


 
    --  VISUALIZACIÓN EN LOS DISPLAYS
  

    process(ram_addr_display_s, ram_data_display_s, data_valid_s)
    begin

        if data_valid_s = '0' then

            HEX3 <= decodificar("0000");
            HEX2 <= decodificar("0000");
            HEX1 <= decodificar("0000");
            HEX0 <= decodificar("0000");

        else

            -- HEX3: dirección de la RAM
            HEX3 <= decodificar(ram_addr_display_s(3 downto 0));

            -- HEX2: parte alta del dato
            HEX2 <= decodificar(
                std_logic_vector(resize(unsigned(ram_data_display_s(9 downto 8)), 4))
            );

            -- HEX1: parte intermedia del dato
            HEX1 <= decodificar(ram_data_display_s(7 downto 4));

            -- HEX0: parte baja del dato
            HEX0 <= decodificar(ram_data_display_s(3 downto 0));

        end if;

    end process;

end architecture rtl;