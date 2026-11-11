library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.pkg_system.all;

entity rom_memory is

    -- Aca dejamos estos genéricos por si en algun momento nos toca cambiar el tamaño del bus de datos o de las direcciones
    generic (
        DATA_WIDTH : positive := 10;
        ADDR_WIDTH : positive := 4
    );

    -- Los pines que conectamos: el reloj del sistema, la dirección que entra para buscar y el dato que sale
    port (
        clk      : in  std_logic;
        addr     : in  std_logic_vector(ADDR_WIDTH-1 downto 0);
        data_out : out std_logic_vector(DATA_WIDTH-1 downto 0)
    );

end entity;

architecture rtl of rom_memory is

    -- Aca armamos el tipo de dato para la tabla, o sea, una matriz que tiene tantas casillas como indique pues el ancho de la dirección
    type mem_array_t is array
    (0 to 2**ADDR_WIDTH-1)
    of std_logic_vector(DATA_WIDTH-1 downto 0);

    -- En esta parte metimos los valores fijos que queríamos que la ROM tuviera guardados desde el principio como nos indico el profe (del 1000 al 1015)
    constant mem : mem_array_t := (
        0  => std_logic_vector(to_unsigned(1000, DATA_WIDTH)),
        1  => std_logic_vector(to_unsigned(1001, DATA_WIDTH)),
        2  => std_logic_vector(to_unsigned(1002, DATA_WIDTH)),
        3  => std_logic_vector(to_unsigned(1003, DATA_WIDTH)),
        4  => std_logic_vector(to_unsigned(1004, DATA_WIDTH)),
        5  => std_logic_vector(to_unsigned(1005, DATA_WIDTH)),
        6  => std_logic_vector(to_unsigned(1006, DATA_WIDTH)),
        7  => std_logic_vector(to_unsigned(1007, DATA_WIDTH)),
        8  => std_logic_vector(to_unsigned(1008, DATA_WIDTH)),
        9  => std_logic_vector(to_unsigned(1009, DATA_WIDTH)),
        10 => std_logic_vector(to_unsigned(1010, DATA_WIDTH)),
        11 => std_logic_vector(to_unsigned(1011, DATA_WIDTH)),
        12 => std_logic_vector(to_unsigned(1012, DATA_WIDTH)),
        13 => std_logic_vector(to_unsigned(1013, DATA_WIDTH)),
        14 => std_logic_vector(to_unsigned(1014, DATA_WIDTH)),
        15 => std_logic_vector(to_unsigned(1015, DATA_WIDTH))
    );

    -- Este cablecito lo usamos para guardar el dato antes de sacarlo, y la variable para pasar la dirección a número entero
    signal q_reg  : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal addr_i : integer range 0 to 2**ADDR_WIDTH-1;

    -- Con esto le indicamos a Quartus que meta esta tabla en los bloques de memoria M9K de la tarjeta, con lo que investigamos obligamos a quartus a trabajar ya con las memorias internas de la fpga sino haria resto de flip flop y circuitos que no queremos
    attribute romstyle : string;
    attribute romstyle of mem : constant is "M9K";

begin

    -- Aca pasamos la dirección que nos llega en binario a un número entero normalito para poder buscar en el arreglo de arriba
    addr_i <= to_integer(unsigned(addr));

    -- Este proceso lo armamos para leer la memoria sincronizados con el reloj
    process(clk)
    begin
        -- Segun entendimos, cada vez que hay un flanco de subida en el reloj, buscamos el dato en la posicion y lo retenemos
        if rising_edge(clk) then
            q_reg <= mem(addr_i);
        end if;
    end process;

    -- Y por ultimo mandamos el dato que quedó guardado en el registro hacia la salida del modulo
    data_out <= q_reg;

end architecture;


