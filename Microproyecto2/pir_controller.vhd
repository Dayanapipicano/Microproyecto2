
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity pir_controller is
    port (
        clk       : in  std_logic;
        rst       : in  std_logic;
        pir_in    : in  std_logic;

        LED_TEST  : out std_logic;
        pir_pulse : out std_logic
    );
end entity;

architecture rtl of pir_controller is


    --Recibe la señal y la estabiliza
    signal pir_sync1 : std_logic;
    signal pir_sync2 : std_logic;
    signal pir_prev  : std_logic;

begin

    -- Indicador de la señal sincronizada
    LED_TEST <= pir_in;

    process(clk, rst)
    begin
        if rst = '0' then
            pir_sync1 <= '0';
            pir_sync2 <= '0';
            pir_prev  <= '0';
            pir_pulse <= '0';

        elsif rising_edge(clk) then

            -- Sincronización del sensor
            pir_sync1 <= pir_in;
            pir_sync2 <= pir_sync1;

            -- Detección del flanco de subida
            pir_prev <= pir_sync2;

            if pir_sync2 = '1' and pir_prev = '0' then
                pir_pulse <= '1';
            else
                pir_pulse <= '0';
            end if;

        end if;
    end process;

end architecture;
