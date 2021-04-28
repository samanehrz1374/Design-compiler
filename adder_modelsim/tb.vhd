----------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
use std.textio.all;
use ieee.std_logic_textio.all;
 

 
ENTITY multiplier_tb IS
END multiplier_tb;
 
ARCHITECTURE Behavioral OF multiplier_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Behavioral
    PORT(
            F : in std_logic_vector (7 DOWNTO 0):="00000000";
            G : in std_logic_vector (7 DOWNTO 0):="00000000";
            Cin : in std_logic;
            S : out std_logic_vector (8 DOWNTO 0):="000000000"
            );
    END COMPONENT;
    

   --Inputs
   signal F : std_logic_vector (7 DOWNTO 0) := (others => '0');
   signal G : std_logic_vector (7 DOWNTO 0) := (others => '0');
   signal Cin : std_logic :='0';
    --Outputs
   signal S : std_logic_vector (8 DOWNTO 0);
   file input_buf : text ;
   file file_RESULTS : text;

 
BEGIN
 
    -- Instantiate the Unit Under Test (UUT)
   uut: Behavioral PORT MAP (
          F => F,
          G => G,
          Cin=>Cin,
          S => S
        );

 

   -- Stimulus process
   stim_proc: process
    variable read_col_from_input_buf : line; -- read lines one by one from input_buf
   variable v_oline: line;
   variable val_col1, val_col2: std_logic_vector (7 DOWNTO 0); -- to save col 1and col 2values of 1bit
   variable val_SPACE : character; -- for spaces between data in file
   begin
   file_open(input_buf,"input10000-twocolum.txt", read_mode);
   file_open(file_RESULTS, "output_binery_results.txt", write_mode);
-------------------------------------
while not endfile(input_buf) loop
readline(input_buf, read_col_from_input_buf);
read(read_col_from_input_buf, val_col1);
read(read_col_from_input_buf, val_SPACE); -- read in the space character
read(read_col_from_input_buf, val_col2);
F<= val_col1;
G<= val_col2;
Cin<='0';
wait for 100 ns; -- to display results for 20ns
write(v_oline, S, right, 9);
writeline(file_RESULTS, v_oline);
end loop;
file_close(input_buf) ;
file_close(file_RESULTS);
wait;

   end process;

END;
