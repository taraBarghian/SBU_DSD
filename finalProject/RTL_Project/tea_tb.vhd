
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tea_tb IS
END tea_tb;
 
ARCHITECTURE behavior OF tea_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT tea
    PORT(
    clk, reset : in std_logic;
    start : in std_logic;
    ready : out std_logic;
    key   : in std_logic_vector(127 downto 0);
    value  : in std_logic_vector(63 downto 0);   
    out_ans : out std_logic_vector(63 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal reset : std_logic := '0';
   signal clk : std_logic := '0';
   signal start : std_logic := '0';
   signal key : std_logic_vector(127 downto 0) := (others => '0');
   signal value : std_logic_vector(63 downto 0) := (others => '0');

 	--Outputs
   signal ready : std_logic;
   signal out_ans : std_logic_vector(63 downto 0);

   -- Clock period definitions
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: tea PORT MAP (  clk => clk,
			 reset => reset,
         
          start => start,
          ready => ready,
          key => key,
          value => value,
          out_ans => out_ans
        );

   -- Clock process definitions
   clock_process :process
   begin
		clk <= '0';
		wait for clock_period/2;
		clk <= '1';
		wait for clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      reset <= '1';
		wait for 100 ns;	
		reset <= '0';
      wait for clock_period*10;
      key <= (others=>'0');
		value <= x"FFFFFFFFFFFFFFFF";
		wait for clock_period;
		start <= '1';
      wait for clock_period;
      start <= '0';
		wait for clock_period*65;
      wait;

      -- insert stimulus here 

      wait;
   end process;

END behavior;

