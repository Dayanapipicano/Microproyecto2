
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

        HEX0 : out std_logic_vector(6 downto 0);
        HEX1 : out std_logic_vector(6 downto 0);
        HEX2 : out std_logic_vector(6 downto 0);
        HEX3 : out std_logic_vector(6 downto 0)
    );
end entity;

architecture rtl of Microproyecto2 is

    signal pir_pulse_s : std_logic;

    -- Señales temporales para probar sin el sensor
    signal pir_prueba : std_logic := '0';
    signal contador_prueba : integer range 0 to 49999999 := 0;

    signal rom_addr_s : addr_t;
    signal ram_addr_s : addr_t;

    signal ram_addr_display_s : addr_t;

    signal rom_data_s : data_t;
    signal ram_data_s : data_t;

    signal ram_wr_en_s : std_logic;
    signal ram_rd_en_s : std_logic;

    signal data_valid_s : std_logic := '0';

    -- Decodificador hexadecimal a 7 segmentos
    function decodificar(
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

    -- Generador temporal de pulsos para probar el sistema
    process(CLOCK_50, rst)
    begin
        if rst = '0' then
            contador_prueba <= 0;
            pir_prueba <= '0';

        elsif rising_edge(CLOCK_50) then
            if contador_prueba = 49999999 then
                contador_prueba <= 0;
                pir_prueba <= '1';

            elsif contador_prueba = 1 then
                pir_prueba <= '0';
                contador_prueba <= contador_prueba + 1;

            else
                contador_prueba <= contador_prueba + 1;
            end if;
        end if;
    end process;

    -- Controlador del sensor PIR
    u_pir : entity work.pir_controller
        port map (
            clk       => CLOCK_50,
            rst       => rst,
            pir_in    => pir_in,
            LED_TEST  => LED_TEST,
            pir_pulse => pir_pulse_s
        );

    -- Unidad de control
    u_control : entity work.control_unit
        port map (
            clk       => CLOCK_50,
            rst       => rst,
            pir_pulse => pir_prueba,

            rom_addr  => rom_addr_s,
            ram_addr  => ram_addr_s,

            ram_wr_en => ram_wr_en_s,
            ram_rd_en => ram_rd_en_s
        );

    -- Memoria ROM
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

    -- Memoria RAM
    u_ram : entity work.ram_memory
        generic map (
            DATA_WIDTH => DATA_WIDTH,
            ADDR_WIDTH => ADDR_WIDTH,
            RDW_MODE  => "READ_FIRST"
        )
        port map (
            clk      => CLOCK_50,
            rd_en    => ram_rd_en_s,
            wr_en    => ram_wr_en_s,
            addr     => ram_addr_s,
            data_in  => rom_data_s,
            data_out => ram_data_s
        );

    -- Registro de la dirección que se acaba de leer
    process(CLOCK_50, rst)
    begin
        if rst = '0' then
            ram_addr_display_s <= (others => '0');
            data_valid_s <= '0';

        elsif rising_edge(CLOCK_50) then
            if ram_rd_en_s = '1' then
                ram_addr_display_s <= ram_addr_s;
                data_valid_s <= '1';
            end if;
        end if;
    end process;

    -- Visualización de RAM en hexadecimal
    process(data_valid_s, ram_data_s, ram_addr_display_s)
    begin
        -- Estado inicial: mostrar 0000
        HEX0 <= "1000000";
        HEX1 <= "1000000";
        HEX2 <= "1000000";
        HEX3 <= "1000000";

        -- Cuando ya hay un dato leído de la RAM
        if data_valid_s = '1' then
            HEX0 <= decodificar(ram_data_s(3 downto 0));
            HEX1 <= decodificar(ram_data_s(7 downto 4));
            HEX2 <= decodificar("00" & ram_data_s(9 downto 8));
            HEX3 <= decodificar(ram_addr_display_s);
        end if;
    end process;

end architecture;