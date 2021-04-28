
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_behavioral is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_behavioral.all;

entity behavioral is

   port( F, G : in std_logic_vector (7 downto 0);  Cin : in std_logic;  S : out
         std_logic_vector (8 downto 0));

end behavioral;

architecture SYN_behavioral of behavioral is

   component OAI21XL
      port( A0, A1, B0 : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component XNOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX1
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component OAI2BB1X1
      port( A0N, A1N, B0 : in std_logic;  Y : out std_logic);
   end component;
   
   component AOI2BB2X1
      port( B0, B1, A0N, A1N : in std_logic;  Y : out std_logic);
   end component;
   
   component MXI2X1
      port( A, B, S0 : in std_logic;  Y : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n16, n17
      , n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, 
      n32, n33, n34, n35, n36, n37, n39, n40 : std_logic;

begin
   
   U16 : OAI21XL port map( A0 => n1, A1 => n2, B0 => n16, Y => S(8));
   U17 : OAI21XL port map( A0 => F(7), A1 => n17, B0 => G(7), Y => n16);
   U18 : MXI2X1 port map( A => F(7), B => n1, S0 => n18, Y => S(7));
   U19 : AOI2BB2X1 port map( B0 => G(7), B1 => n2, A0N => n2, A1N => G(7), Y =>
                           n18);
   U20 : OAI21XL port map( A0 => n3, A1 => n4, B0 => n19, Y => n17);
   U21 : OAI21XL port map( A0 => F(6), A1 => n20, B0 => G(6), Y => n19);
   U22 : MXI2X1 port map( A => F(6), B => n3, S0 => n21, Y => S(6));
   U23 : AOI2BB2X1 port map( B0 => G(6), B1 => n4, A0N => n4, A1N => G(6), Y =>
                           n21);
   U24 : OAI21XL port map( A0 => n5, A1 => n6, B0 => n22, Y => n20);
   U25 : OAI21XL port map( A0 => F(5), A1 => n23, B0 => G(5), Y => n22);
   U26 : MXI2X1 port map( A => F(5), B => n5, S0 => n24, Y => S(5));
   U27 : AOI2BB2X1 port map( B0 => G(5), B1 => n6, A0N => n6, A1N => G(5), Y =>
                           n24);
   U28 : OAI21XL port map( A0 => n7, A1 => n8, B0 => n25, Y => n23);
   U29 : OAI21XL port map( A0 => F(4), A1 => n26, B0 => G(4), Y => n25);
   U30 : MXI2X1 port map( A => F(4), B => n7, S0 => n27, Y => S(4));
   U31 : AOI2BB2X1 port map( B0 => G(4), B1 => n8, A0N => n8, A1N => G(4), Y =>
                           n27);
   U32 : OAI21XL port map( A0 => n9, A1 => n10, B0 => n28, Y => n26);
   U33 : OAI21XL port map( A0 => F(3), A1 => n29, B0 => G(3), Y => n28);
   U34 : MXI2X1 port map( A => F(3), B => n9, S0 => n30, Y => S(3));
   U35 : AOI2BB2X1 port map( B0 => G(3), B1 => n10, A0N => n10, A1N => G(3), Y 
                           => n30);
   U36 : OAI21XL port map( A0 => n11, A1 => n12, B0 => n31, Y => n29);
   U37 : OAI21XL port map( A0 => F(2), A1 => n32, B0 => G(2), Y => n31);
   U38 : MXI2X1 port map( A => F(2), B => n11, S0 => n33, Y => S(2));
   U39 : AOI2BB2X1 port map( B0 => G(2), B1 => n12, A0N => n12, A1N => G(2), Y 
                           => n33);
   U40 : OAI21XL port map( A0 => n13, A1 => n14, B0 => n34, Y => n32);
   U41 : OAI21XL port map( A0 => F(1), A1 => n35, B0 => G(1), Y => n34);
   U42 : MXI2X1 port map( A => F(1), B => n13, S0 => n36, Y => S(1));
   U43 : AOI2BB2X1 port map( B0 => G(1), B1 => n14, A0N => n14, A1N => G(1), Y 
                           => n36);
   U44 : OAI2BB1X1 port map( A0N => F(0), A1N => Cin, B0 => n37, Y => n35);
   U45 : OAI21XL port map( A0 => F(0), A1 => Cin, B0 => G(0), Y => n37);
   U13 : INVX1 port map( A => F(1), Y => n13);
   U14 : INVX1 port map( A => n35, Y => n14);
   U11 : INVX1 port map( A => F(2), Y => n11);
   U12 : INVX1 port map( A => n32, Y => n12);
   U9 : INVX1 port map( A => F(3), Y => n9);
   U10 : INVX1 port map( A => n29, Y => n10);
   U1 : INVX1 port map( A => F(7), Y => n1);
   U3 : INVX1 port map( A => F(6), Y => n3);
   U5 : INVX1 port map( A => F(5), Y => n5);
   U7 : INVX1 port map( A => F(4), Y => n7);
   U8 : INVX1 port map( A => n26, Y => n8);
   U6 : INVX1 port map( A => n23, Y => n6);
   U4 : INVX1 port map( A => n20, Y => n4);
   U2 : INVX1 port map( A => n17, Y => n2);
   U48 : XNOR2X1 port map( A => Cin, B => G(0), Y => n39);
   U49 : NAND2X1 port map( A => n39, B => F(0), Y => n40);
   U50 : OAI21XL port map( A0 => n39, A1 => F(0), B0 => n40, Y => S(0));

end SYN_behavioral;
