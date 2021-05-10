LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY elevator_tb IS 
END elevator_tb;

ARCHITECTURE test of elevator_tb IS 
    COMPONENT elevator IS
        PORT(
		clk        : IN  std_logic;
		nrst       : IN  std_logic;
        fanin      : IN  std_logic;
        lightin    : IN  std_logic;
		door_o_in  : IN  std_logic; -- 1 active
		door_c_in  : IN  std_logic; --  1 active
		come       : IN  std_logic_vector(3 DOWNTO 0);
		go         : IN  std_logic_vector(3 DOWNTO 0);
		switch     : IN  std_logic_vector(3 DOWNTO 0); --0,1,2,3
        fanout     : OUT std_logic;
        lightout   : OUT std_logic;
		motor_up   : OUT std_logic;
		motor_down : OUT std_logic;
        door_o_out : OUT  std_logic; -- 0 open  - 1 close  
        door_c_out : OUT  std_logic; -- 0 open  - 1 close  
		curr_floor : OUT std_logic_vector(1 DOWNTO 0) := "00";
		move_state : OUT std_logic_vector(1 DOWNTO 0) -- 00: still, 01: up, 10: down
	);
END COMPONENT;

	SIGNAL clk_t        :  std_logic := '0';
	SIGNAL nrst_t       :  std_logic;
    SIGNAL fanin_t      :  std_logic:= '0';
    SIGNAL lightin_t    :  std_logic:= '0';
	SIGNAL door_o_in_t  :  std_logic; -- 1 active
	SIGNAL door_c_in_t  :  std_logic; --  1 active
	SIGNAL come_t       :  std_logic_vector(3 DOWNTO 0);
	SIGNAL go_t         :  std_logic_vector(3 DOWNTO 0);
	SIGNAL switch_t     :  std_logic_vector(3 DOWNTO 0);
    SIGNAL fanout_t     :  std_logic;
    SIGNAL lightout_t   :  std_logic;
	SIGNAL motor_up_t   :  std_logic;
	SIGNAL motor_down_t :  std_logic;
    SIGNAL door_o_out_t :  std_logic; -- 0 open  - 1 close
    SIGNAL door_c_out_t :  std_logic; -- 0 open  - 1 close
	SIGNAL curr_floor_t :  std_logic_vector(1 DOWNTO 0);
	SIGNAL move_state_t :  std_logic_vector(1 DOWNTO 0);
BEGIN 

	UUT : elevator PORT MAP(clk_t, nrst_t, fanin_t, lightin_t, door_o_in_t,door_c_in_t,  come_t, go_t, switch_t, fanout_t, lightout_t, motor_up_t, motor_down_t, door_o_out_t, door_c_out_t, curr_floor_t, move_state_t);

	
    nrst_t     <= '0' , '1' AFTER 2 ns;
	clk_t      <= NOT clk_t AFTER 2 ns;
    door_o_in_t <= '1' , '0' AFTER 4 ns, '1' AFTER 118 ns; 
	door_c_in_t <= '0' , '1' AFTER 4 ns, '0' AFTER 118 ns; 
    fanin_t    <= '0' , '1' AFTER 3 ns;
    lightin_t  <= '0' , '1' AFTER 3 ns;
	go_t       <= "0000", "0100" AFTER 20 ns, "0000" AFTER 24 ns, "0010" AFTER 30 ns, "0000" AFTER 34 ns;
	come_t     <= "0000", "0001" AFTER 3 ns, "0000" AFTER 7 ns, "0010" AFTER 10 ns, "0000" AFTER 14 ns, "0100" AFTER 48 ns, "0000" AFTER 52 ns, "0001" AFTER 85 ns, "0000" AFTER 89 ns;
	switch_t   <= "0010", "0000" AFTER 4 ns, "0001" AFTER 20 ns, "0000" AFTER 24 ns, "0010" AFTER 48 ns, "0000" AFTER 52 ns, "0100" AFTER 70 ns, "0000" AFTER 86 ns, "0001" AFTER 115 ns;


END test;


-- start: 1
-- 0 3ns
-- 1 10ns
-- 2 20ns
-- 1 30ns
-- 2 48ns
-- 0 85ns