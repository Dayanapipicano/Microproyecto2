library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.pkg_system.all;

entity rom_memory is
    port (
        clk      : in  std_logic;
        addr     : in  std_logic_vector(ADDR_WIDTH-1 downto 0);
        data_out : out std_logic_vector(DATA_WIDTH-1 downto 0)
    );
end entity;

architecture rtl of rom_memory is
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

    signal q_reg  : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal addr_i : integer range 0 to 2**ADDR_WIDTH-1;

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