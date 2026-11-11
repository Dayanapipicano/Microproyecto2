library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_top_system is
end entity;

architecture sim of tb_top_system is

    signal CLOCK_50 : std_logic := '0';
    signal rst      : std_logic := '0';
    --signal pir_in   : std_logic := '0';
	 signal SW0   : std_logic := '0';
	 
	 

    --signal LEDR : std_logic_vector(7 downto 0);

begin

    -- Instancia del sistema completo
    uut : entity work.Microproyecto2
        port map (
            CLOCK_50 => CLOCK_50,
            rst      => rst,
            --pir_in   => pir_in
				SW0      => SW0
				
            --LEDR     => LEDR
        );


    -- Generación del reloj
    process
    begin
        CLOCK_50 <= '0';
        wait for 10 ns;

        CLOCK_50 <= '1';
        wait for 10 ns;
    end process;


    -- Estímulos de prueba
    process
    begin

        -- Activar reset
        rst <= '1';
        wait for 40 ns;

        -- Desactivar reset
        rst <= '0';
        wait for 40 ns;

        -- Simular detección de movimiento
        pir_in <= '1';
        wait for 100 ns;

        -- El sensor deja de detectar movimiento
        pir_in <= '0';

        -- Esperar el procesamiento del evento
        wait for 500 ns;

        -- Comprobar el dato almacenado
        --assert LEDR = x"AA"
            report "Error: el dato almacenado no es el esperado"
            severity error;

        report "Prueba finalizada"
            severity note;

        wait;

    end process;

end architecture;