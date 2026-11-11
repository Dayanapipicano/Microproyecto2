

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.pkg_system.all;

entity control_unit is

-- Aquí definimos los pines: el reloj, el reset, la señal del sensor PIR, y las salidas para manejar las direcciones y los permisos de la memoria.
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

   -- Los estados por donde va pasando el sistema: reposo, leer ROM, escribir RAM y leer RAM.

    type STATES is (IDLE, READ_ROM, WRITE_RAM, READ_RAM);
	 
	-- Contadores para movernos por las direcciones de la ROM y la RAM en orden y no envolatarnos.
    signal state_reg : STATES;
    signal state_next : STATES;

    signal rom_addr_reg : unsigned(ADDR_WIDTH-1 downto 0);
    signal ram_addr_reg : unsigned(ADDR_WIDTH-1 downto 0);

begin

    -- Este proceso maneja el tiempo y actualiza las direcciones cuando toca trabajar.
    process(clk, rst)
    begin
	 
	 -- Si nos tiran un reset en cero, mandamos todo a reposo y ponemos las direcciones en cero.
        if rst = '0' then
            state_reg    <= IDLE;
            rom_addr_reg <= (others => '0');
            ram_addr_reg <= (others => '0');

        elsif rising_edge(clk) then
		  
		  -- Pasamos al estado que nos indicó la lógica de control.
            state_reg <= state_next;
				
				
		  -- Si estamos escribiendo en la RAM, sumamos uno a la dirección de la ROM para buscar el siguiente dato.

            if state_reg = WRITE_RAM then
                rom_addr_reg <= rom_addr_reg + 1;
            end if;
				
				
		  -- Si estamos leyendo de la RAM, también le sumamos uno a su dirección.

            if state_reg = READ_RAM then
                ram_addr_reg <= ram_addr_reg + 1;
            end if;
        end if;
    end process;
	 

-- Este proceso decide cómo saltamos de un estado a otro dependiendo de lo que pase , aca mejor dicho esta en lo que se basa nuestra maquina de estados , como esta bien dividia si es bastante facil de entender.

    process(state_reg, pir_pulse)
    begin
        state_next <= state_reg;

        case state_reg is
		  -- En reposo nos quedamos quietos hasta que el sensor PIR detecte movimiento (pulso en 1).

            when IDLE =>
                if pir_pulse = '1' then
                    state_next <= READ_ROM;
                end if;
					 
		  -- Leemos el dato de la ROM y de una nos vamos a escribirlo en la RAM.

            when READ_ROM =>
                state_next <= WRITE_RAM;
					 
					 
		  -- Escribimos el dato en la RAM y pasamos al estado de lectura.

            when WRITE_RAM =>
                state_next <= READ_RAM;
					 
					 
        -- Terminamos de leer la RAM y volvemos a reposo a esperar otro toque.
            when READ_RAM =>
                state_next <= IDLE;
					 
					 
        -- Por si acaso pasa algo raro, mandamos el sistema a reposo de una.
            when others =>
                state_next <= IDLE;

        end case;
    end process;

   -- Este proceso prende y apaga los permisos de la RAM según lo que toque hacer en el estado.
    process(state_reg)
    begin
        ram_wr_en <= '0';
        ram_rd_en <= '0';

        case state_reg is
		  
		  
		  -- En reposo no tocamos las memorias para nada.
            when IDLE =>
                null;
					 
					 
		  -- Leyendo la ROM todavía no activamos la RAM.
            when READ_ROM =>
                null;
					 
					 
		  -- Si toca escribir en la RAM, prendemos el permiso de escritura en uno.

            when WRITE_RAM =>
                ram_wr_en <= '1';
					 
					 
		  -- Si toca leer de la RAM, prendemos el permiso de lectura en uno.
            when READ_RAM =>
                ram_rd_en <= '1';

            when others =>
                null;

        end case;
    end process;

-- Transformamos los contadores internos en vectores normalitos y corrientes para sacarlos del módulo.
    rom_addr <= std_logic_vector(rom_addr_reg);
    ram_addr <= std_logic_vector(ram_addr_reg);

end architecture;