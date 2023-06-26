----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:59:29 06/22/2022 
-- Design Name: 
-- Module Name:    Hex7Segb - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Hex7Segb is
    Port ( x : in  STD_LOGIC_VECTOR (3 downto 0);
           a_to_g : out  STD_LOGIC_VECTOR (6 downto 0));
end Hex7Segb;

architecture Behavioral of Hex7Segb is

begin
      
		P1: process(x)
		 begin 
		  
		     case x is 
			       when x"0" => a_to_g <= "0000001"; --0
                when x"1" => a_to_g <= "1001111"; --1
                when x"2" => a_to_g <= "0010010"; --2
                when x"3" => a_to_g <= "0000110"; --3
                when x"4" => a_to_g <= "1001100"; --4
                when x"5" => a_to_g <= "0100100"; --5
                when x"6" => a_to_g <= "0100000"; --6
                when x"7" => a_to_g <= "0001101"; --7
                when x"8" => a_to_g <= "0000000"; --8
                when x"9" => a_to_g <= "0000100"; --9
                when x"A" => a_to_g <= "0001000"; --A
                when x"B" => a_to_g <= "1100000"; --B
                when x"C" => a_to_g <= "0110001"; --C
                when x"D" => a_to_g <= "1000010"; --D
                when x"E" => a_to_g <= "0110000"; --E
                when others => a_to_g <= "0111000"; --F
              end case;
				  end process;

end Behavioral;

