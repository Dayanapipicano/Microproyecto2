library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package pkg_system is

    -- 1. Parámetros Generales del Sistema
    -- Ancho de datos: 10 bits (para poder almacenar valores hasta 1015)
    constant DATA_WIDTH : integer := 10;
    
    -- Ancho de dirección: 4 bits (para direccionar 16 posiciones: 2^4 = 16)
    constant ADDR_WIDTH : integer := 4;

    -- 2. Tipo de dato personalizado para la memoria (16 posiciones de 10 bits)
    type mem_array_t is array (0 to 2**ADDR_WIDTH - 1) of std_logic_vector(DATA_WIDTH - 1 downto 0);

end package pkg_system;

package body pkg_system is
    -- El cuerpo del paquete queda vacío ya que solo declaramos constantes y tipos.
end package body pkg_system;