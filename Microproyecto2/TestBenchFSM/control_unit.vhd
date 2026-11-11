

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.pkg_system.all;

entity control_unit is
    port (
        clk       : in  std_logic;
        rst       : in  std_logic;
        pir_pulse : in  std_logic;

        rom_addr  : out addr_t;
        ram_addr  : out addr_t;

        ram_wr_en : out std_logic;
        ram_rd_en : out std_logic
    );
end entity;

architecture rtl of control_unit is

    type STATES is (IDLE, READ_ROM, WRITE_RAM, READ_RAM);

    signal state_reg : STATES;
    signal state_next : STATES;

    signal rom_addr_reg : unsigned(ADDR_WIDTH-1 downto 0);
    signal ram_addr_reg : unsigned(ADDR_WIDTH-1 downto 0);

begin

    -- Registro de estado y direcciones
    process(clk, rst)
    begin
        if rst = '0' then
            state_reg    <= IDLE;
            rom_addr_reg <= (others => '0');
            ram_addr_reg <= (others => '0');

        elsif rising_edge(clk) then
            state_reg <= state_next;

            if state_reg = WRITE_RAM then
                rom_addr_reg <= rom_addr_reg + 1;
            end if;

            if state_reg = READ_RAM then
                ram_addr_reg <= ram_addr_reg + 1;
            end if;
        end if;
    end process;


    -- Lógica de transición de estados
    process(state_reg, pir_pulse)
    begin
        state_next <= state_reg;

        case state_reg is

            when IDLE =>
                if pir_pulse = '1' then
                    state_next <= READ_ROM;
                end if;

            when READ_ROM =>
                state_next <= WRITE_RAM;

            when WRITE_RAM =>
                state_next <= READ_RAM;

            when READ_RAM =>
                state_next <= IDLE;

            when others =>
                state_next <= IDLE;

        end case;
    end process;


    -- Salidas de la máquina de estados
    process(state_reg)
    begin
        ram_wr_en <= '0';
        ram_rd_en <= '0';

        case state_reg is

            when IDLE =>
                null;

            when READ_ROM =>
                null;

            when WRITE_RAM =>
                ram_wr_en <= '1';

            when READ_RAM =>
                ram_rd_en <= '1';

            when others =>
                null;

        end case;
    end process;


    -- Direcciones de memoria
    rom_addr <= std_logic_vector(rom_addr_reg);
    ram_addr <= std_logic_vector(ram_addr_reg);

end architecture;