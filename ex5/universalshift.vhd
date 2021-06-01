LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;


entity universalshift is
    port (
        clear      : IN  STD_LOGIC,
        S0         : IN  STD_LOGIC,
        S1         : IN  STD_LOGIC,
        clk        : IN  STD_LOGIC, 
        SerialL    : IN  STD_LOGIC, 
        SerialR    : IN  STD_LOGIC, 
        A          : IN  STD_LOGIC, 
        B          : IN  STD_LOGIC, 
        C          : IN  STD_LOGIC, 
        D          : IN  STD_LOGIC,
        Qa         : OUT STD_LOGIC,
        Qb         : OUT STD_LOGIC,
        Qc         : OUT STD_LOGIC,
        Qd         : OUT STD_LOGIC
        
    );
end entity universalshift;

architecture rtl of universalshift is
    
begin

    SIGNAL Qan, Qbn, Qcn, Qdn : STD_LOGIC;
 

    PROCESS_A : proc_name: process(clk, clear, Qa)
    begin
        if clear = "0" then
            Qan <="0";
        elsif rising_edge(clk) then
            Qan <= (S0 and S1 and A) or (S0 and not(S1) and SerialR ) or 
            (S1 and not(S0) and Qbn) or  (not(s0) and not(S1) and Qa); 
        else
            Qan <= Qa;
        end if;
    end process PROCESS_A;

    

    PROCESS_B : proc_name: process(clk, clear, Qb)
    begin
        if clear = "0" then
            Qbn <="0";
        elsif rising_edge(clk) then
            Qbn <= (S0 and S1 and B) or (S0 and not(S1) and Qan ) or 
            (S1 and not(S0) and Qcn) or  (not(s0) and not(S1) and Qb); 
        else
            Qbn <= Qb;
        end if;
    end process PROCESS_B;



    PROCESS_C : proc_name: process(clk, clear, Qc)
    begin
        if clear = "0" then
            Qcn <="0";
        elsif rising_edge(clk) then
            Qcn <= (S0 and S1 and C) or (S0 and not(S1) and Qbn ) or 
            (S1 and not(S0) and Qdn) or  (not(s0) and not(S1) and Qc); 
        else
            Qcn <= Qc;
        end if;
    end process PROCESS_C;



    
    PROCESS_D : proc_name: process(clk, clear, Qd)
    begin
        if clear = "0" then
            Qdn <="0";
        elsif rising_edge(clk) then
            Qdn <= (S0 and S1 and D) or (S0 and not(S1) and Qcn ) or 
            (S1 and not(S0) and SerialL) or  (not(s0) and not(S1) and Qd); 
        else
            Qdn <= Qd;
        end if;
    end process PROCESS_D;

    Qa <= Qan;
    Qb <= Qbn;
    Qc <= Qcn;
    Qd <= Qdn;

    
    
end architecture rtl;