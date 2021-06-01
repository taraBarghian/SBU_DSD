
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY ShiftRegister IS
	PORT (
		clear 		: IN  std_logic;
		mode 	    : IN std_logic_vector(1 DOWNTO 0);
		clock 		: IN  std_logic;
		serial 	    : IN std_logic_vector(1 DOWNTO 0);
		parallel   : IN std_logic_vector(3 DOWNTO 0);		
        outputs 	: BUFFER std_logic_vector(3 DOWNTO 0)
      
    );
END ShiftRegister;


ARCHITECTURE ShiftRegister_arch OF ShiftRegister IS
BEGIN


	--signal outputs : std_logic_vector(3 DOWNTO 0);
	
    PROCESS (clear , clock)
    BEGIN
        
        if clear = '0' then
            outputs <= "0000";
        elsif rising_edge(clock) then 
            -- If (S1, S0) = (H, H), outputs are parallel inputs
            if mode = "11" then 
                outputs <= parallel;
            -- If (S1, S0) = (L, H), shift right and shift in `RSI` from left
            elsif mode = "01" then 
                outputs <= serial(0) & outputs(3 downto 1);
            -- If (S1, S0) = (H, L), shift left and shift in `LSI` from right
            elsif mode = "10" then 
                outputs <= outputs(2 downto 0) & serial(1);
                else
                    outputs <= outputs;
            end if;
            
        end if;
    END PROCESS;
	
	--output_org <= outputs;
    
END ShiftRegister_arch;
