library IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

USE ieee.numeric_std.ALL;

ENTITY elevator IS
	GENERIC (n : integer := 4);
	PORT (
		clk : IN STD_LOGIC;
		nrst : IN STD_LOGIC;
      		come : IN STD_LOGIC_VECTOR(n-1 DOWNTO 0); --dokmeye birune asansor
      		switch : IN STD_LOGIC_VECTOR(n-1 DOWNTO 0); --makane asansor
		go : IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);   --dokmeye tooye asansor
      		
		door_open:IN STD_LOGIC;	   --dastoore baz shodane zoodtare dar
		door_close:IN STD_LOGIC;	--dastoore baste shodane zoodtare dar
		fan_in:IN STD_LOGIC;			--dokmeye fan
      		motor_up : OUT STD_LOGIC := '0'; 	--dastoore harekat be bala
      		motor_down : OUT STD_LOGIC := '0';	--dastoore harekat be payin
		elevator_state :OUT STD_LOGIC_VECTOR(n DOWNTO 0);
		open_door_motor:OUT STD_LOGIC :='1';
		close_door_motor:OUT STD_LOGIC:='0';
		fan_out:OUT STD_LOGIC;
		current_floor : OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0)
		
     
    );
END elevator;


ARCHITECTURE Behavioral of elevator is
	TYPE  state IS (DOOR_OPEN_STATE,WAIT_OPEN_STATE,MOVE_STATE,STEADY_STATE,DOOR_CLOSE_STATE,WAIT_CLOSE_STATE);
	SIGNAL current_state : state := DOOR_OPEN_STATE;
Signal temp_state : std_logic_vector (n-1 DOWNTO 0):="0001";
   SIGNAL next_state : state;
	SIGNAL door_state : STD_LOGIC := '1'; --1 open 0 close
	--Signal last_motor_movement : STD_LOGIC_VECTOR(1 DOWNTO 0) := "00";
	Signal steady_floor  : std_logic_vector (n-1 DOWNTO 0):="0001";
	Signal motor_up_tmp,motor_down_tmp :STD_LOGIC;
	Signal close_door_motor_tmp,open_door_motor_tmp : STD_LOGIC;

BEGIN
	
--	current_floor <= log2 switch
	
	com : PROCESS (clk)
		VARIABLE last_motor_movement : STD_LOGIC_VECTOR(1 DOWNTO 0) := "00";
		
		
		BEGIN
		IF current_state = STEADY_STATE THEN 
			motor_up_tmp<= '0';
			motor_down_tmp<='0';
			last_motor_movement:="00";
			steady_floor<= temp_state;
			IF door_open='1' THEN
				next_state<=DOOR_OPEN_STATE;  
			ELSE
				next_state<=WAIT_OPEN_STATE;
			END IF;
		
		ELSIF current_state = DOOR_OPEN_STATE THEN 
			IF come ="0000" AND go="0000" THEN
			close_door_motor_tmp<='0';
			open_door_motor_tmp<='1';
			next_state<=DOOR_OPEN_STATE;
			ELSIF ((come="0000" AND ((go AND switch) =switch )) OR (go="0000" AND ((come AND switch)=switch ))) THEN
				next_state<=DOOR_OPEN_STATE;
			ELSIF  ((come AND switch) /= switch) OR ((go AND switch) /= switch) THEN
				IF door_close='1' THEN
                			next_state <= DOOR_CLOSE_STATE;					
            			ELSIF door_close='0' THEN
                			next_state <= WAIT_CLOSE_STATE;					
   				END IF;
			ELSE
				next_state<=DOOR_OPEN_STATE;
							
   			END IF;
			
		ELSIF current_state = DOOR_CLOSE_STATE THEN 
			next_state <=MOVE_STATE;
			close_door_motor_tmp<='1';
			open_door_motor_tmp<='0';
			
		ELSIF current_state = WAIT_CLOSE_STATE THEN 
			next_state <=DOOR_CLOSE_STATE;
			open_door_motor_tmp<='0';
			
		ELSIF current_state = WAIT_OPEN_STATE THEN 
			next_state <=DOOR_OPEN_STATE;
			close_door_motor_tmp<='0';
			
		ELSIF current_state = WAIT_OPEN_STATE THEN 
			next_state <=DOOR_OPEN_STATE;
			close_door_motor_tmp<='0';
		
		ELSIF current_state = MOVE_STATE and clk = '1' AND clk'event THEN
			IF  ((come AND switch )=switch  OR (go AND switch) =switch ) AND( (steady_floor AND switch)/= switch )THEN
				next_state<=STEADY_STATE;
			ELSE
				IF (come>"0000" AND go>"0000") AND((come>switch AND go<switch) OR (come<switch AND go>switch)) THEN
					IF last_motor_movement="10" THEN
						motor_up_tmp<='1';
						motor_down_tmp<='0';
						temp_state <= temp_state(n-2 downto 0)&'0';
						
						IF (temp_state(n-2 downto 0)&'0')=come or (temp_state(n-2 downto 0)&'0')=go  THEN
						next_state<=STEADY_STATE;
						ELSE
						next_state<=MOVE_STATE;
						END IF;
					ELSE
						motor_up_tmp<='0';
						motor_down_tmp<='1';
						
						temp_state <= '0'&temp_state(n-1 downto 1);
						IF ('0'&temp_state(n-1 downto 1))=come or ('0'&temp_state(n-1 downto 1))=go  THEN
						next_state<=STEADY_STATE;
						ELSE
						next_state<=MOVE_STATE;
						END IF;
					END IF;
				ELSIF (come >= switch AND go >= switch) OR (come > switch AND go = "0000")  OR (come = "0000" AND go > switch) THEN	
					motor_up_tmp<='1';
					motor_down_tmp<='0';
					last_motor_movement:="10";
					
					temp_state <= temp_state(n-2 downto 0)&'0';
					IF (temp_state(n-2 downto 0)&'0')=come or (temp_state(n-2 downto 0)&'0')=go  THEN
						next_state<=STEADY_STATE;
					ELSE
					next_state<=MOVE_STATE;
					END IF;
			    
				ELSIF (come <= switch AND go <= switch) OR (come < switch AND go = "0000")  OR (come = "0000" AND go < switch) THEN	
					motor_up_tmp<='0';
					motor_down_tmp<='1';
					last_motor_movement:="01";
					
					temp_state <= '0' &temp_state(n-1 downto 1);	
					next_state<=MOVE_STATE;
			    END IF;
				
					
					
				
			END IF;
			
			
		END IF;

	END PROCESS com;
	
	
	seq : PROCESS (clk, nrst)
    BEGIN
        IF nrst = '0' THEN
            current_state <= DOOR_OPEN_STATE;
	    current_floor<="0001";
	    elevator_state<= '0'& "0001";	
---	    close_door_motor<='0';
---            open_door_motor<='1';
        ELSIF clk = '1' AND clk'event THEN
            current_state <= next_state;
        END IF;
	current_floor<=temp_state;
	--elevator_state<= '0'& temp_state;

	motor_up<=motor_up;
	motor_down<=motor_down_tmp;
	close_door_motor<= close_door_motor_tmp;
	open_door_motor<=open_door_motor_tmp;

	fan_out<=fan_in;
	IF next_state=MOVE_STATE or current_state=MOVE_STATE THEN
            elevator_state<= '0'& temp_state;
        ELSE
	   elevator_state<= '1'& temp_state;
        END IF;
		
		
    END PROCESS seq;
END Behavioral;




















