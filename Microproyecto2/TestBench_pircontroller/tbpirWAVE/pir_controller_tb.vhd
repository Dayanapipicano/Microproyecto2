library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- La entidad de un testbench siempre va vacía porque no tiene pines físicos hacia afuera.
entity pir_controller_tb is
end entity pir_controller_tb;

architecture sim of pir_controller_tb is

    -- 1. Declaramos señales internas para conectar (mapear) con el módulo PIR.
    signal clk       : std_logic := '0';
    signal rst       : std_logic := '0';
    signal pir_in    : std_logic := '0';
    signal LED_TEST  : std_logic;
    signal pir_pulse : std_logic;

    -- Definimos la constante del periodo del reloj de 50 MHz (20 nanosegundos).
    constant CLK_PERIOD : time := 20 ns;

begin

    -- 2. Instanciamos el módulo que queremos probar (el pir_controller).
    uut : entity work.pir_controller
        port map (
            clk       => clk,
            rst       => rst,
            pir_in    => pir_in,
            LED_TEST  => LED_TEST,
            pir_pulse => pir_pulse
        );

    -- 3. Generador automático del Reloj (Clock) de 50 MHz.
    clk_process : process
    begin
        clk <= '0';
        wait for CLK_PERIOD / 2; -- Mitad del ciclo en cero (10 ns)
        clk <= '1';
        wait for CLK_PERIOD / 2; -- Mitad del ciclo en uno (10 ns)
    end process;

    -- 4. El generador de estímulos (Aquí es donde armamos la "onda" que simula el movimiento del PIR).
    stim_process : process
    begin
        -- Al arrancar la simulación, mantenemos el reset activo en cero por un instante.
        rst <= '0';
        pir_in <= '0';
        wait for 50 ns;

        -- Soltamos el reset (lo pasamos a '1' lógico para que el circuito empiece a operar).
        rst <= '1';
        wait for 40 ns;

        -- SIMULACIÓN DE MOVIMIENTO 1: Mandamos un pulso largo desde el sensor PIR.
        pir_in <= '1';
        wait for 100 ns; -- Simulamos que la persona sigue pasando frente al sensor.
        pir_in <= '0';   -- El sensor se apaga.
        wait for 200 ns; -- Esperamos un rato en reposo.

        -- SIMULACIÓN DE MOVIMIENTO 2: Mandamos otro pulso de presencia para probar de nuevo.
        pir_in <= '1';
        wait for 60 ns;
        pir_in <= '0';
        
        -- Terminamos la simulación congelando el tiempo.
        wait;
    end process;

end architecture sim;