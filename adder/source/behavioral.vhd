 library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.Exact_Adder_Function.all;

entity behavioral is
 Port ( F : in std_logic_vector (7 DOWNTO 0):="00000000";
 G : in std_logic_vector (7 DOWNTO 0):="00000000";
 Cin : in std_logic;
 S : out std_logic_vector (8 DOWNTO 0):="000000000");
 --Cout : out STD_LOGIC);
end behavioral;

architecture behavioral of behavioral is
--signal    MUL01 	  :  bit_vector (21 DOWNTO 0):="0000000000000000000000";   
begin

  S  <= Exact_Adder ( F  , G ,Cin ); 
 

end behavioral;