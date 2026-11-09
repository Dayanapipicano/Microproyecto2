library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package pkg_system is

    -- Ancho de los buses
    constant DATA_WIDTH : positive := 10;
    constant ADDR_WIDTH : positive := 4;

    -- Cantidad de posiciones de memoria
    constant MEM_DEPTH : positive := 2**ADDR_WIDTH;

    -- Tipos de datos para las memorias
    subtype data_t is std_logic_vector(DATA_WIDTH-1 downto 0);
    subtype addr_t is std_logic_vector(ADDR_WIDTH-1 downto 0);

    type memory_t is array (0 to MEM_DEPTH-1) of data_t;

end package pkg_system;


package body pkg_system is

end package body pkg_system;
