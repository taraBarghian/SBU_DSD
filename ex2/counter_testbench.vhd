
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
ENTITY counter_testbench IS
END counter_testbench;
 
ARCHITECTURE testbench OF counter_testbench IS 
 
 
    COMPONENT counter IS
		GENERIC ( N : integer := 8 );
		PORT(
			clock 		: IN  std_logic;
			nreset 		: IN  std_logic;
			load_in 	: IN std_logic;
			load_step	: IN std_logic;
			mode  		: IN  std_logic; 
			output 		: OUT std_logic_vector(n-1 DOWNTO 0);
			data_in 	: IN std_logic_vector(n-1 DOWNTO 0);
			data_step 	: IN std_logic_vector(n-1 DOWNTO 0)
        );
		END COMPONENT;
    

   
   signal clock_t 	  : std_logic := '0';
   signal nreset_t 	  : std_logic ;
   signal data_in_t   : std_logic_vector(7 DOWNTO 0);
   signal data_step_t : std_logic_vector(7 DOWNTO 0);
   signal output_t    : std_logic_vector(7 DOWNTO 0);
   signal load_in_t 	  : std_logic;
   signal load_step_t	  : std_logic;
   signal mode_t 	  : std_logic;


BEGIN
	cut : counter GENERIC MAP (8) PORT MAP (clock_t,nreset_t,load_in_t,load_step_t,mode_t,output_t,data_in_t,data_step_t);
	clock_t <= NOT clock_t AFTER 10 ns;
	nreset_t <= '0' , '1' AFTER 30 ns;
	
	load_in_t  <= '0','1' AFTER 250 ns,'0' AFTER 270 ns; 
	load_step_t  <= '0', '1' AFTER 450ns;
	mode_t  <= '0', '1' AFTER 200 ns, '0' AFTER 380 ns , '1' AFTER 560 ns;

	data_in_t  <= "00000000" , "00000011" AFTER 250ns; 
	data_step_t  	<= "00000000" , "00000101" AFTER 450ns; 
	
 
	
 


END testbench;