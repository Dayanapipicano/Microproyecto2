library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.pkg_system.all;

entity rom_memory_tb is
end entity;

architecture sim of rom_memory_tb is

    -- Señales de estímulo
    signal clk      : std_logic := '0';
    signal addr     : std_logic_vector(ADDR_WIDTH-1 downto 0) := (others => '0');
    signal data_out : std_logic_vector(DATA_WIDTH-1 downto 0);

    -- Período del reloj de prueba
    constant CLK_PERIOD : time := 20 ns;

begin

    -- Instanciación del Dispositivo Bajo Prueba (DUT)
    DUT: entity work.rom_memory
        port map (
            clk      => clk,
            addr     => addr,
            data_out => data_out
        );

    -- Generador de Reloj
    clk_process: process
    begin
        clk <= '0';
        wait for CLK_PERIOD / 2;
        clk <= '1';
        wait for CLK_PERIOD / 2;
    end process;

    -- Proceso de Estímulos (barrido de direcciones de 0 a 15)
    stim_proc: process
    begin
        wait for 30 ns; -- Espera inicial sincronizada

        for i in 0 to 15 loop
            addr <= std_logic_vector(to_unsigned(i, ADDR_WIDTH));
            wait for CLK_PERIOD; -- Espera un flanco de reloj para que lea el dato
        end loop;

        -- Mantener la simulación unos ciclos más para verificar
        wait for 40 ns;
        wait;
    end process;

end architecture;