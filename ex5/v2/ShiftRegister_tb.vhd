
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
ENTITY ShiftRegister_tb IS
END ShiftRegister_tb;
 
ARCHITECTURE testbench OF ShiftRegister_tb IS 
 
 
    COMPONENT ShiftRegister IS
        PORT (
            clear 		: IN  std_logic;
            mode 	    : IN std_logic_vector(1 DOWNTO 0);
            clock 		: IN  std_logic;
            serial 	    : IN std_logic_vector(1 DOWNTO 0);
            parallel   : IN std_logic_vector(3 DOWNTO 0);		
            outputs 	: buffer std_logic_vector(3 DOWNTO 0)
        
        );
		END COMPONENT;
    

   
        signal clear_tb 		:  std_logic;
        signal mode_tb 	        :  std_logic_vector(1 DOWNTO 0);
        signal clock_tb 		:  std_logic := '0';
        signal serial_tb 	    :  std_logic_vector(1 DOWNTO 0);
        signal parallel_tb     :  std_logic_vector(3 DOWNTO 0);		
        signal outputs_tb 	    :  std_logic_vector(3 DOWNTO 0);
    


BEGIN
	cut : ShiftRegister PORT MAP (clear_tb,mode_tb,clock_tb,serial_tb,parallel_tb,outputs_tb);
	clock_tb <= NOT clock_tb AFTER 15 ns;
	clear_tb <= '0' , '1' AFTER 30 ns;
	
	mode_tb  <= "00" , "11" AFTER 40 ns , "01" AFTER 60 ns , "10" AFTER 80 ns , "11" AFTER 100 ns , "00"  AFTER  120 ns ;  
	serial_tb  <= "00" , "11" AFTER 90 ns;
	parallel_tb  <= "1011","0001"AFTER 70 ns; 


END testbench;