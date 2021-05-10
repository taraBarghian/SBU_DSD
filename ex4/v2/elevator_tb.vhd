LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;
USE ieee.std_logic_arith.ALL;

ENTITY elevator_tb IS
END elevator_tb;

ARCHITECTURE test OF elevator_tb IS
    COMPONENT elevator IS
        PORT (
        	clk : IN STD_LOGIC;
		nrst : IN STD_LOGIC;
      		come : IN STD_LOGIC_VECTOR(3 DOWNTO 0); --dokmeye birune asansor
      		switch : IN STD_LOGIC_VECTOR(3 DOWNTO 0); --makane asansor
		go : IN STD_LOGIC_VECTOR(3 DOWNTO 0);   --dokmeye tooye asansor
      		
		door_open:IN STD_LOGIC;	   --dastoore baz shodane zoodtare dar
		door_close:IN STD_LOGIC;	--dastoore baste shodane zoodtare dar
		fan_in:IN STD_LOGIC;			--dokmeye fan
      		motor_up : OUT STD_LOGIC := '0'; 	--dastoore harekat be bala
      		motor_down : OUT STD_LOGIC := '0';	--dastoore harekat be payin
		elevator_state :OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
		open_door_motor:OUT STD_LOGIC;
		close_door_motor:OUT STD_LOGIC;
		fan_out:OUT STD_LOGIC;
		current_floor : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
        );
    END COMPONENT;
    SIGNAL clk_tb : STD_LOGIC := '0';
    SIGNAL nrst_tb : STD_LOGIC;
    SIGNAL come_tb : STD_LOGIC_VECTOR(3 DOWNTO 0);
    SIGNAL go_tb : STD_LOGIC_VECTOR(3 DOWNTO 0);
    SIGNAL switch_tb : STD_LOGIC_VECTOR(3 DOWNTO 0);
    SIGNAL elevator_state_tb : STD_LOGIC_VECTOR(4 DOWNTO 0);
    SIGNAL motor_up_tb : STD_LOGIC;
    SIGNAL motor_down_tb : STD_LOGIC;
	SIGNAL open_door_motor_tb: STD_LOGIC;
	SIGNAL	close_door_motor_tb: STD_LOGIC;
	SIGNAL	fan_out_tb: STD_LOGIC;
	SIGNAL door_open_tb: STD_LOGIC;
	SIGNAL	door_close_tb: STD_LOGIC;
	SIGNAL 	fan_in_tb: STD_LOGIC;
	SIGNAL 	current_floor_tb: STD_LOGIC_VECTOR(3 DOWNTO 0);

BEGIN
    cut : elevator PORT MAP		
		(clk_tb,
		nrst_tb,
		come_tb,
		switch_tb,
		go_tb,
      		
		door_open_tb,
		door_close_tb,
		fan_in_tb,
      		motor_up_tb,
      		motor_down_tb,
		elevator_state_tb,
		open_door_motor_tb,
		close_door_motor_tb,
		fan_out_tb	,
		current_floor_tb) 	
     ;
    clk_tb <= NOT clk_tb AFTER 5 ns;
    nrst_tb <= '0', '1' AFTER 5 ns;
    come_tb <= "0000", "0110" AFTER 20 ns, "0100" AFTER 80 ns, "0000" AFTER 300 ns;
    go_tb <= "0000", "0010" AFTER 130 ns, "0000" AFTER 315 ns;
    switch_tb <= current_floor_tb;
    door_open_tb <='1','0' AFTER 155 ns;
    door_close_tb <='0','1' AFTER 200 ns;
    fan_in_tb<= '0', '1' AFTER 30 ns;

END test;