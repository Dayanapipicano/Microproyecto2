
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity pir_controller is
-- Aquí definimos los pines del módulo: las entradas de reloj, reset y sensor, y las salidas para el LED y el pulso.
    port (
        clk       : in  std_logic;
        rst       : in  std_logic;
        pir_in    : in  std_logic;

        LED_TEST  : out std_logic;
        pir_pulse : out std_logic
    );
end entity;

architecture rtl of pir_controller is
-- Aca la explicacion en pocas palabras seria que los pyr sync 1 y 2 son dos flip flops en serie, el primero es como el que tanquea los errores y asume ese daño,ya que la señal que recibe el 1 es asincronica y como es del exterior puede ser caotica, y con el segundo ya se envia limpia esa señal ya sincronicamente
    signal pir_sync1 : std_logic;
    signal pir_sync2 : std_logic;
    signal pir_prev  : std_logic;

begin

    -- Bueno en esta parte la verdad es mas que todo una prueba , mandamos esto directo al LED para ver a simple vista si el sensor está recibiendo algo.
    LED_TEST <= pir_in;

    process(clk, rst)
    begin
	 
	 -- Si llega el reset en cero, apagamos y dejamos todo en cero limpio.
        if rst = '0' then
            pir_sync1 <= '0';
            pir_sync2 <= '0';
            pir_prev  <= '0';
            pir_pulse <= '0';

        elsif rising_edge(clk) then
		  
		   -- Pasamos la señal por dos registros para sincronizarla con el reloj del sistema.

            pir_sync1 <= pir_in;
            pir_sync2 <= pir_sync1;

         -- Guardamos el estado que tenía antes para poder compararlo ahorita.
            pir_prev <= pir_sync2;
				
			-- Si antes estaba en 0 y ahora pasó a 1, sacamos un pulso de un solo ciclo de reloj.

            if pir_sync2 = '1' and pir_prev = '0' then
                pir_pulse <= '1';
            else
                pir_pulse <= '0';
            end if;

        end if;
    end process;

end architecture;
