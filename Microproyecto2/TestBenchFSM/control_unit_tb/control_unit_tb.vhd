library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.pkg_system.all;

entity control_unit_tb is
end entity;

architecture sim of control_unit_tb is

    -- Constantes para el periodo del reloj (50 MHz -> 20 ns)
    constant CLK_PERIOD : time := 20 ns;

    -- Señales de estímulo y observación
    signal clk       : std_logic := '0';
    signal rst       : std_logic := '0';
    signal pir_pulse : std_logic := '0';

    signal rom_addr  : addr_t;
    signal ram_addr  : addr_t;
    signal ram_wr_en : std_logic;
    signal ram_rd_en : std_logic;

begin

    -- Instancia de la Unidad de Control (DUT)
    DUT: entity work.control_unit
        port map (
            clk       => clk,
            rst       => rst,
            pir_pulse => pir_pulse,
            rom_addr  => rom_addr,
            ram_addr  => ram_addr,
            ram_wr_en => ram_wr_en,
            ram_rd_en => ram_rd_en
        );

    -- Generador de Reloj (50 MHz)
    clk_process: process
    begin
        clk <= '0';
        wait for CLK_PERIOD / 2;
        clk <= '1';
        wait for CLK_PERIOD / 2;
    end process;

    -- Proceso de estímulos
    stim_proc: process
    begin
        -- 1. Reset activo en bajo
        rst <= '0';
        pir_pulse <= '0';
        wait for 40 ns;

        -- Liberar reset
        rst <= '1';
        wait for 40 ns;

        -- 2. Simular un pulso del sensor PIR para disparar la FSM
        wait until rising_edge(clk);
        pir_pulse <= '1';
        wait for CLK_PERIOD; -- Mantener el pulso un ciclo
        pir_pulse <= '0';

        -- Esperar suficiente tiempo para ver la transición por los estados
        wait for 200 ns;

        -- 3. Simular otro pulso más adelante si se desea
        wait until rising_edge(clk);
        pir_pulse <= '1';
        wait for CLK_PERIOD;
        pir_pulse <= '0';

        wait for 200 ns;

        -- Finalizar simulación
        assert false report "Simulacion de Control Unit finalizada." severity note;
        wait;
    end process;

end architecture;