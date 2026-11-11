
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity ram_memory is


 -- Aca dejamos estos genéricos por si luego nos toca cambiar el tamaño del dato, la cantidad de casillas o el modo de lectura/escritura de la RAM


    generic (
        DATA_WIDTH : positive := 10;
        ADDR_WIDTH : positive := 4;
        RDW_MODE   : string := "READ_FIRST"
    );
	 
	 
 -- Los pines que conectamos a la RAM: el reloj, los botones o señales de leer y escribir, la dirección, y los cables de los datos que entran y salen

    port (
        clk      : in  std_logic;

        rd_en    : in  std_logic := '1';
        wr_en    : in  std_logic;

        addr     : in  std_logic_vector(ADDR_WIDTH-1 downto 0);

        data_in  : in  std_logic_vector(DATA_WIDTH-1 downto 0);
        data_out : out std_logic_vector(DATA_WIDTH-1 downto 0)
    );

end entity;


architecture rtl of ram_memory is


    -- Definicion de la memoria RAM
	 
 -- Aca armamos la formita de la tabla o matriz para la RAM usando el tamaño que definimos en las direcciones
 
    type ram_type is array
    (0 to 2**ADDR_WIDTH-1)
    of std_logic_vector(DATA_WIDTH-1 downto 0);

	 

    -- Este es el espacio de memoria donde podemos guardar y cambiar datos a cada rato mientras corre el programa

    signal mem : ram_type;
	 

    -- Este pedacito lo usamos para guardar temporalmente el dato antes de sacarlo

    signal q_reg : std_logic_vector(DATA_WIDTH-1 downto 0);
	 

   -- Aca  pues lo que se haria es pasar la dirección de binario a un número entero para no enredarnos buscando en la matriz

    signal addr_i : integer range 0 to 2**ADDR_WIDTH-1;
	 

	-- Con esto le decimos a Quartus que monte esta RAM en los bloques M9K que trae la tarjeta y no gaste tanta lógica de más

    attribute ramstyle : string;
    attribute ramstyle of mem : signal is "M9K";

begin

   -- Aca hacemos la conversión de la dirección cada vez que cambia para poder ubicar bien la casilla
	
    addr_i <= to_integer(unsigned(addr));
	 
   -- Aca según lo que hemos investigado todo esto se mueve al ritmo del reloj porque la RAM lo pide como especie de obligatorio

    process(clk)
    begin

	 
	 -- Siguiendo pues la lógica del anterior que hicimos también en el rom, apenas llega el saltito de subida del reloj, revisamos si nos toca guardar o sacar algo

        if rising_edge(clk) then
		  
	 -- Si pusimos el permiso de escritura en uno, metemos el dato que viene entrando en la casilla pues que a este le toca

           if wr_en = '1' then

                mem(addr_i) <= data_in;
					 
	 -- Aquí elegimos si devolvemos de una el dato que acabamos de meter o el viejito que estaba antes

                if RDW_MODE = "WRITE_FIRST" then

                    q_reg <= data_in;

                elsif RDW_MODE = "READ_FIRST" then

                    q_reg <= mem(addr_i);

                else

                    null;

                end if;
					 
	  -- Si no estamos escribiendo, miramos si el permiso de lectura está encendido para sacar el dato guardado


            else

                if rd_en = '1' then

                    q_reg <= mem(addr_i);

                end if;

            end if;
				
	

        end if;

    end process;
	 
	   -- Y ya por ultimo sacamos el dato que quedó guardado en el registro hacia el puerto de salida del módulo


    data_out <= q_reg;

end architecture;
