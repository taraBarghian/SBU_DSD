--Shahriar Morabi - 97243064
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY elevator IS
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
        door_o_out : OUT std_logic; -- 0 open  - 1 close  
        door_c_out : OUT std_logic; -- 0 open  - 1 close  
		curr_floor : OUT std_logic_vector(1 DOWNTO 0) := "00";
		move_state : OUT std_logic_vector(1 DOWNTO 0) -- 00: still, 01: up, 10: down
	);
END elevator;

ARCHITECTURE mealy OF elevator IS
	TYPE state IS(s0, s1, s2, s3);
	SIGNAL temp_move, temp_floor : std_logic_vector(1 DOWNTO 0):= "00";-- 00: still, 01: up, 10: down
	SIGNAL curr_state 	: state := s0;
	SIGNAL next_state 	: state;
	SIGNAL pause 		: std_logic := '1';
	SIGNAL dest       	: std_logic_vector(3 DOWNTO 0) := "0000";
BEGIN
	floor: PROCESS(nrst, clk)
	BEGIN
		IF nrst = '0' THEN 

           -- switvh setting
			IF switch(0) = '1' THEN
				curr_state <= s0; 
				temp_floor <= "00";
			ELSIF switch(1) = '1' THEN
				curr_state <= s1; 
				temp_floor <= "01";
			ELSIF switch(2) = '1' THEN
				curr_state <= s2; 
				temp_floor <= "10";
			ELSE
				curr_state <= s3; 
				temp_floor <= "11";
			END IF;


		ELSIF RISING_EDGE(clk) THEN

			IF    switch(0) = '1' THEN temp_floor <= "00";
			ELSIF switch(1) = '1' THEN temp_floor <= "01";
			ELSIF switch(2) = '1' THEN temp_floor <= "10";
			ELSIF switch(3) = '1' THEN temp_floor <= "11";
			END IF;
			
			IF  next_state = s0 AND switch(0) = '1' THEN 
				curr_state <= next_state;
				pause <= '1';
			ELSIF next_state = s1 AND switch(1) = '1' THEN 
				curr_state <= next_state;
				pause <= '1';
			ELSIF next_state = s2 AND switch(2) = '1' THEN 
				curr_state <= next_state;
				pause <= '1';
			ELSIF next_state = s3 AND switch(3) = '1' THEN 
				curr_state <= next_state;
				pause <= '1';
			ELSE
				pause <= '0';
			END IF;
       
		END IF;
	END PROCESS floor;



	curr_floor <= temp_floor;

	destination: PROCESS(clk)
	BEGIN
    
		IF RISING_EDGE(clk) THEN
			IF switch(0) = '1' THEN
				dest(0) <= '0';
			ELSIF (come(0) OR go(0)) = '1' THEN 
				dest(0) <= '1';
			END IF;

			IF switch(1) = '1' THEN
				dest(1) <= '0';
			ELSIF (come(1) OR go(1)) = '1' THEN 
				dest(1) <= '1';
			END IF;

			IF switch(2) = '1' THEN
				dest(2) <= '0';
			ELSIF (come(2) OR go(2)) = '1' THEN 
				dest(2) <= '1';
			END IF;

			IF switch(3) = '1' THEN
				dest(3) <= '0';
			ELSIF (come(3) OR go(3)) = '1' THEN 
				dest(3) <= '1';
			END IF;
		END IF;
    
	END PROCESS destination;

	move: PROCESS(dest, curr_state)
	BEGIN
    IF door_c_in = '1' AND door_o_in='0' THEN -- door should be closed
		IF curr_state = s0 THEN
			IF (dest(1)) = '1' THEN 
				next_state <= s1;
				temp_move <= "01";
			ELSIF (dest(2)) = '1' THEN 
				next_state <= s2;
				temp_move <= "01";
			ELSIF (dest(3)) = '1' THEN
				next_state <= s3;
				temp_move <= "01";
			ELSE 
				next_state <= s0;
				temp_move <= "00";
			END IF;

		ELSIF curr_state = s1 THEN
			IF (temp_move(1) AND (NOT pause)) = '1' THEN 
				IF (dest(0)) = '1' THEN
					next_state <= s0;
					temp_move <= "10";-- motor is going down
				ELSIF (dest(2)) = '1' THEN 
					next_state <= s2;
					temp_move <= "01";
				ELSIF (dest(3)) = '1' THEN 
					next_state <= s3;
					temp_move <= "01";
				ELSE 
					next_state <= s1;
					temp_move <= "00";
				END IF;
			ELSE
				IF (dest(2)) = '1' THEN 
					next_state <= s2;
					temp_move <= "01";
				ELSIF (dest(3)) = '1' THEN 
					next_state <= s3;
					temp_move <= "01";
				ELSIF (dest(0)) = '1' THEN
					next_state <= s0;
					temp_move <= "10";
				ELSE 
					next_state <= s1;
					temp_move <= "00";
				END IF;
			END IF;	

		ELSIF curr_state = s2 THEN
			IF (temp_move(1) AND (NOT pause)) = '1' THEN 
				IF (dest(1))='1' THEN
					next_state <= s1;
					temp_move <= "10";-- motor is going down
				ELSIF (dest(0))='1' THEN 
					next_state <= s0;
					temp_move <= "10";
				ELSIF (dest(3))='1' THEN 
					next_state <= s3;
					temp_move <= "01";
				ELSE 
					next_state <= s2;
					temp_move <= "00";
				END IF;
			ELSE
				IF (dest(3))='1' THEN 
					next_state <= s3;
					temp_move <= "01";
				ELSIF (dest(0))='1' THEN 
					next_state <= s0;
					temp_move <= "10";-- motor is going down
				ELSIF (dest(1))='1' THEN
					next_state <= s1;
					temp_move <= "10";
				ELSE 
					next_state <= s2;
					temp_move <= "00";
				END IF;
			END IF;

		ELSE --curr_state = s3
			IF (dest(2))='1' THEN 
				next_state <= s2;
				temp_move <= "10";
			ELSIF (dest(1))='1' THEN 
				next_state <= s1;
				temp_move <= "10";
			ELSIF (dest(0))='1' THEN
				next_state <= s0;
				temp_move <= "10";
			ELSE 
				next_state <= s3;
				temp_move <= "00";
			END IF;	
		END IF;
        
    END IF;
	END PROCESS move;

    settup: PROCESS(clk)
	BEGIN
            -- fan setting
            IF fanin = '1' THEN
				fanout <='1';
            ELSE
                fanout <= '0';
            
            END IF;

            -- light setting
            IF lightin = '1' THEN
				lightout <= '1';
            ELSE
                lightout <= '0';
            END IF;

			-- door 
			IF door_c_in = '1' THEN
				door_c_out <= '1';
			ELSE
				door_c_out <= '0';
			END IF;

			IF door_o_in = '1' THEN
				door_o_out <= '1';
			ELSE
				door_o_out <= '0';
			END IF;


    END PROCESS settup;

	motor_up   <= temp_move(0) AND (NOT pause) AND nrst;
	motor_down <= temp_move(1) AND (NOT pause) AND nrst;
	move_state <= temp_move AND ((NOT pause) & (NOT pause)) AND (nrst & nrst);

END mealy;