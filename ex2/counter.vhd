
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY counter IS
	Generic ( n : integer := 8 );
    PORT (
		clock 		: IN  std_logic;
		nreset 		: IN  std_logic;
		load_in 	: IN std_logic;
		load_step	: IN std_logic;
		mode  		: IN  std_logic; 
        output 		: OUT std_logic_vector(n-1 DOWNTO 0);
        data_in 	: IN std_logic_vector(n-1 DOWNTO 0);
		data_step 	: IN std_logic_vector(n-1 DOWNTO 0)
    );
END counter;


ARCHITECTURE counter_arch OF counter IS
    SIGNAL temp: std_logic_vector (n-1 DOWNTO 0) ; -- temporary vector to hold user input
	SIGNAL temp_step: std_logic_vector (n-1 DOWNTO 0):=(OTHERS => '0'); -- temporary vector to hold user step input
    
BEGIN
    PROCESS (clock, nreset)
    BEGIN
        
        IF (nreset = '0') THEN
            		temp <= (OTHERS => '0' );
        ELSIF (clock'EVENT AND clock='1' ) THEN
			IF (load_step = '1') THEN
                		temp_step <= data_step; -- load step parallel data
			ELSE
				temp_step <= (0=> '1' , OTHERS => '0');
			END IF;
		
			
			
			--temp
            		IF (load_in = '1') THEN
                		temp <= data_in; -- load input parallel data
			
			ELSIF(mode = '0' ) THEN 
				 temp <= STD_LOGIC_VECTOR (unsigned(temp) + unsigned(temp_step));			
			ELSE  
				 temp <= STD_LOGIC_VECTOR (unsigned(temp) - unsigned(temp_step));
			END IF;

--step:
			
        END IF;
output <= temp; -- change output to current temp signal value
    END PROCESS;
    
END counter_arch;
