library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.pkg_system.all; -- Importa DATA_WIDTH, ADDR_WIDTH y mem_array_t

entity rom_memory is
    port (
        clk      : in  std_logic;
        addr     : in  std_logic_vector(ADDR_WIDTH-1 downto 0);
        data_out : out std_logic_vector(DATA_WIDTH-1 downto 0)
    );
end entity;

architecture rtl of rom_memory is
    -- Inicialización explícita con formato decimal requerida por el proyecto
    constant mem : mem_array_t := (
        0  => d"1000",
        1  => d"1001",
        2  => d"1002",
        3  => d"1003",
        4  => d"1004",
        5  => d"1005",
        6  => d"1006",
        7  => d"1007",
        8  => d"1008",
        9  => d"1009",
        10 => d"1010",
        11 => d"1011",
        12 => d"1012",
        13 => d"1013",
        14 => d"1014",
        15 => d"1015"
    );

    signal q_reg  : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal addr_i : integer range 0 to 2**ADDR_WIDTH-1;

    -- Atributo para asegurar la inferencia en bloques de memoria M9K de la Cyclone III
    attribute romstyle : string;
    attribute romstyle of mem : constant is "M9K";
begin
    addr_i <= to_integer(unsigned(addr));

    process(clk)
    begin
        if rising_edge(clk) then
            q_reg <= mem(addr_i);
        end if;
    end process;

    data_out <= q_reg;
end architecture;