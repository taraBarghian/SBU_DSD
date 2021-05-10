library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

package Convolution_pkg IS
    TYPE integer_vector is ARRAY(integer RANGE <>) OF integer;
    TYPE vec3 is ARRAY (integer RANGE <>,integer RANGE <>,integer RANGE <>) of integer;
    TYPE vec2 is ARRAY (integer RANGE <>,integer RANGE <>) of integer;
	
end;

use work.Convolution_pkg.ALL;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.all;

entity convolution is
    generic (i_width  :integer ;
	         i_height :integer  ;
             k_width  :integer  ;
             k_height :integer  );
    port (
		clock:in std_logic;
		img  : in vec2 (0 to i_height-1 , 0 to i_width-1);
		krnl : in vec2 (0 to 2 , 0 to 2 );
		new_img:out vec2 (0 to i_height-1 , 0 to i_width-1)
	  
	);
end convolution;

architecture Behavioral of convolution is


   
    SIGNAL n_i_width:integer  := i_width -(k_width-1);
    SIGNAL  n_i_height:integer := i_height-(k_height-1);
    SIGNAL sum :vec3 (0 to n_i_height , 0 to n_i_width ,0 to 9) 	;
	
BEGIN

    B1: BLOCK (clock'EVENT AND clock = '1' )  
    BEGIN 
	G1:for y in 1 to (i_height-2) generate
	  
		
		new_img(y,0) <=GUARDED img(y,0)-1  WHEN (img(y,0)>0 ) ELSE 0 ;
		new_img(y,i_width-1) <=GUARDED img(y,i_width-1)-1  WHEN (img(y,i_width-1)>0 ) ELSE 0 ;
		
		
           end generate G1;

	G2:for x in 0 to (i_width-1) generate
	  
		
		new_img(0,x) <=GUARDED img(0,x)-1  WHEN (img(0,x)>0 ) ELSE 0 ;
		new_img(i_height-1,x) <=GUARDED img(i_height-1,x)-1  WHEN (img(i_height-1,x)>0 ) ELSE 0 ;
		
		
           end generate G2;

   
	G3:for y in 0 to (n_i_height-1) generate
	   G4:for x in 0 to (n_i_width-1) generate
	     sum(y,x,0) <=0;
	      G5:for k_r in 0 to (k_height-1) generate
		 G6:for k_c in 0 to (k_width-1) generate
		    sum(y,x, k_r * 3 + k_c+1) <= GUARDED sum (y,x,k_r * 3 + k_c) + img((y+k_r),(x+k_c)) * krnl(k_r,k_c);
						
		 end generate G6;
	      end generate G5;
		
	      	new_img(y+1,x+1) <= GUARDED (sum(y,x,9)-1) WHEN (sum(y,x,9)>0 AND sum(y,x,9)<255) ELSE 255 WHEN sum(y,x,9)>=255 ELSE 0 ;

	      end generate G4;
           end generate G3; 
    		
	  END BLOCK B1;
	
end Behavioral;
	