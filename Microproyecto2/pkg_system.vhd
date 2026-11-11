library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Aca definimos el paquete para guardar las constantes y los tipos de datos que vamos a usar en todo el proyecto
package pkg_system is

    -- Ancho de los buses
	 
	 -- Definimos que cada dato que guardamos o movemos va a ser de 10 bits
    constant DATA_WIDTH : positive := 10;
	 
	 -- Definimos que las direcciones van a tener 4 bits para poder ubicar las casillas
    constant ADDR_WIDTH : positive := 4;

    -- Calculamos cuantas casillas en total van a tener las memorias (hacemos 2 a la 4 y nos da 16 posiciones)
	 constant MEM_DEPTH : positive := 2**ADDR_WIDTH;

    -- Tipos de datos para las memorias
	 
	 -- Creamos este tipo para no tener que escribir a cada rato el tamaño de los datos de 10 bits
    subtype data_t is std_logic_vector(DATA_WIDTH-1 downto 0);
	 
	 -- Creamos este otro tipo para reutilizar la misma forma de escribir las direcciones de 4 bits
    subtype addr_t is std_logic_vector(ADDR_WIDTH-1 downto 0);
	 
	 -- Armamos la estructura de la tabla o arreglo que van a usar la ROM y la RAM para guardar las cosas
	  type memory_t is array (0 to MEM_DEPTH-1) of data_t;

end package pkg_system;



-- Esta parte la dejamos vacia porque solo declaramos las cosas arriba y no habia funciones que programar pues adentro

package body pkg_system is

end package body pkg_system;
