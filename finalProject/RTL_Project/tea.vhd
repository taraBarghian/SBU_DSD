library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;


entity Project is 

port(
    clk, reset : in std_logic;
    start : in std_logic;
    ready : out std_logic;
    key   : in std_logic_vector(127 downto 0);
    value  : in std_logic_vector(63 downto 0);   
    out_ans : out std_logic_vector(63 downto 0)
);
end entity; 

architecture arch of Project is 
    type stateType is (start_state, count_state);
    signal state_reg, state_next : stateType;
    signal count_reg, count_next : unsigned(5 downto 0);
    signal k0,k1,k2,k3,v0,v1,sum : std_logic_vector(31 downto 0);

begin 
    process(clk, reset)
    begin 
       
if rising_edge(clk) then
         if reset = '1' then
		 state_reg <= start_state;
            	count_reg <= (others => '1');
		
         elsif start = '1' then 
            
               count_reg <= (others => '0');
           	state_reg <= start_state;
         else
             state_reg <= state_next;
            count_reg <= count_next;
         end if;
      end if;


    end process;
    
    process(count_reg, state_reg)
	variable z,zt,y,yt: std_logic_vector (31 downto 0);
    
    begin 
        if( state_reg = start_state )then 
            
                sum  <= x"9e3779b9";
                count_next <= (others => '0');
		
                state_next <= count_state;

                k0 <= key(31  downto  0);
                k1 <= key(63  downto 32);
                k2 <= key(95  downto 64);
                k3 <= key(127 downto 96);
                y  := value(31  downto  0);
                z  := value(63  downto 32);
				ready <= '0';

            else 
                count_next <= count_reg  + 1;
                sum <= sum + x"9e3779b9";

                    zt:= ((z(27 downto 0) &"0000")+k0) xor (z+sum) xor (("00000"& z(31 downto 5))+k1);
                    y := y+zt;
 
                    yt:= ((y(27 downto 0) &"0000")+k2) xor (y+sum) xor (("00000"& y(31 downto 5))+k3);
                    z := z+yt;

                if (count_reg  + 1) = 32 then
                    state_next <= start_state;
		    ready <='1';
                else
                    state_next <= count_state;
		    ready<='0';
                end if;
        end if;
 out_ans <= std_logic_vector(z&y);
    end process; 
    
    
   
end arch;