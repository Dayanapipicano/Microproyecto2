library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ram_memory_tb is
end entity;

architecture sim of ram_memory_tb is

    -- Constantes de configuración
    constant DATA_WIDTH : positive := 10;
    constant ADDR_WIDTH : positive := 4;
    constant CLK_PERIOD : time     := 20 ns;

    -- Señales de prueba
    signal clk      : std_logic := '0';
    signal rd_en    : std_logic := '0';
    signal wr_en    : std_logic := '0';
    signal addr     : std_logic_vector(ADDR_WIDTH-1 downto 0) := (others => '0');
    signal data_in  : std_logic_vector(DATA_WIDTH-1 downto 0) := (others => '0');
    signal data_out : std_logic_vector(DATA_WIDTH-1 downto 0);

begin

    -- Instancia de la Memoria RAM (DUT)
    DUT: entity work.ram_memory
        generic map (
            DATA_WIDTH => DATA_WIDTH,
            ADDR_WIDTH => ADDR_WIDTH,
            RDW_MODE   => "READ_FIRST"
        )
        port map (
            clk      => clk,
            rd_en    => rd_en,
            wr_en    => wr_en,
            addr     => addr,
            data_in  => data_in,
            data_out => data_out
        );

    -- Generador de Reloj (50 MHz -> 20 ns)
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
        -- Esperar estabilización inicial
        rd_en <= '0';
        wr_en <= '0';
        addr  <= (others => '0');
        data_in <= (others => '0');
        wait for 40 ns;

        -- 1. FASE DE ESCRITURA: Escribir datos en las primeras posiciones (0 al 5)
        for i in 0 to 5 loop
            wait until rising_edge(clk);
            wr_en   <= '1';
            rd_en   <= '0';
            addr    <= std_logic_vector(to_unsigned(i, ADDR_WIDTH));
            data_in <= std_logic_vector(to_unsigned(i + 100, DATA_WIDTH)); -- Dato base ej: 100, 101...
        end loop;

        -- Desactivar escritura
        wait until rising_edge(clk);
        wr_en <= '0';
        data_in <= (others => '0');
        wait for 40 ns;

        -- 2. FASE DE LECTURA: Leer las mismas posiciones (0 al 5) para verificar
        for i in 0 to 5 loop
            wait until rising_edge(clk);
            wr_en <= '0';
            rd_en <= '1';
            addr  <= std_logic_vector(to_unsigned(i, ADDR_WIDTH));
        end loop;

        -- Desactivar lectura
        wait until rising_edge(clk);
        rd_en <= '0';
        wait for 40 ns;

        -- Finalizar simulación
        assert false report "Simulacion de RAM finalizada con exito." severity note;
        wait;
    end process;

end architecture;