library IEEE;
use IEEE.STD_LOGIC_1164.all;

package Exact_Adder_Function is

Function Exact_Adder ( A,B : std_logic_vector ; cin:std_logic) return std_logic_vector ;

end Exact_Adder_Function;

package body Exact_Adder_Function is
	Function Exact_Adder ( A,B : std_logic_vector ;cin:std_logic) 
			return std_logic_vector is
			
			--variable cout:bit;
			variable cinn:std_logic:=cin;
			variable carry:std_logic_vector (7 DOWNTO 0):="00000000";
			variable sum:std_logic_vector (8 DOWNTO 0):="000000000";
			
			begin
		
		--------------------------------------- Exact Part ------------------------------------------
		carry(0)   := ( A(0) and B(0) ) or (   cinn    and A(0) ) or (   cinn   and B(0) );
		carry(1)   := ( A(1) and B(1) ) or ( carry(0) and A(1) ) or ( carry(0) and B(1) );
		carry(2)   := ( A(2) and B(2) ) or ( carry(1) and A(2) ) or ( carry(1) and B(2) );
		carry(3)   := ( A(3) and B(3) ) or ( carry(2) and A(3) ) or ( carry(2) and B(3) );
		carry(4)   := ( A(4) and B(4) ) or ( carry(3) and A(4) ) or ( carry(3) and B(4) );
		carry(5)   := ( A(5) and B(5) ) or ( carry(4) and A(5) ) or ( carry(4) and B(5) );
		carry(6)   := ( A(6) and B(6) ) or ( carry(5) and A(6) ) or ( carry(5) and B(6) );
		carry(7)   := ( A(7) and B(7) ) or ( carry(6) and A(7) ) or ( carry(6) and B(7) );
		--carry(8)   := ( A(8) and B(8) ) or ( carry(7) and A(8) ) or ( carry(7) and B(8) );
	
		
		
		sum(0) 	  :=   A(0) xor B(0)  xor cinn;
		sum(1) 	  :=   A(1) xor B(1)  xor carry(0);
		sum(2) 	  :=   A(2) xor B(2)  xor carry(1);
		sum(3) 	  :=   A(3) xor B(3)  xor carry(2);
		sum(4) 	  :=   A(4) xor B(4)  xor carry(3);
		sum(5) 	  :=   A(5) xor B(5)  xor carry(4);
		sum(6) 	  :=   A(6) xor B(6)  xor carry(5);
		sum(7) 	  :=   A(7) xor B(7)  xor carry(6);
		sum(8)    := carry(7);
		
		-----------------------------------------------------------------------------------------------
		return sum ;
		
end Exact_Adder;
 
end Exact_Adder_Function;
