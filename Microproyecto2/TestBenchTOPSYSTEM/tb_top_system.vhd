library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.pkg_system.all;

entity tb_top_system is
end entity tb_top_system;

architecture sim of tb_top_system is

    -- Constantes de temporización
    constant CLK_PERIOD : time := 20 ns; -- Reloj de 50 MHz

    -- Señales de estímulo
    signal clk_tb    : std_logic := '0';
    signal rst_tb    : std_logic := '0';
    signal pir_in_tb : std_logic := '0';

    -- Señales de salida
    signal led_test_tb : std_logic;
    signal hex3_tb     : std_logic_vector(6 downto 0);
    signal hex2_tb     : std_logic_vector(6 downto 0);
    signal hex1_tb     : std_logic_vector(6 downto 0);
    signal hex0_tb     : std_logic_vector(6 downto 0);

begin

    -- Instancia del Top Level (Microproyecto2)
    DUT : entity work.Microproyecto2
        port map (
            CLOCK_50 => clk_tb,
            rst      => rst_tb,
            pir_in   => pir_in_tb,
            LED_TEST => led_test_tb,
            HEX3     => hex3_tb,
            HEX2     => hex2_tb,
            HEX1     => hex1_tb,
            HEX0     => hex0_tb
        );

   -- Generador de Reloj (50 MHz)
    clk_process : process
    begin
        clk_tb <= '0';
        wait for CLK_PERIOD / 2;
        clk_tb <= '1';
        wait for CLK_PERIOD / 2;
    end process;

    -- Proceso de Estímulos
    stim_process : process
    begin
        -- Estado inicial de reset activado en bajo
        rst_tb    <= '0';
        pir_in_tb <= '0';
        wait for 100 ns;

        -- Liberar reset
        rst_tb <= '1';
        wait for 50 ns;

        -- Simular la activación del sensor PIR (pulso de presencia)
        pir_in_tb <= '1';
        wait for 100 ns;
        pir_in_tb <= '0';

        -- Dejar correr la simulación el tiempo suficiente para que la FSM 
        -- complete los ciclos de escritura en RAM y lectura para el display
        wait for 1200 ns;

        -- Simular otro disparo de presencia más adelante si se desea
        pir_in_tb <= '1';
        wait for 100 ns;
        pir_in_tb <= '0';

        wait for 1200 ns;
        
        -- Fin de la simulación
        wait;
    end process;

end architecture sim;