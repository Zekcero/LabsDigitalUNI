----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:32:48 06/23/2022 
-- Design Name: 
-- Module Name:    MuxN - Behavioral 
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
use IEEE.STD_LOGIC_unsigned.ALL;
use IEEE.NUMERIC_STD.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MuxN is
generic (N: integer :=8; M: integer :=2);
Port ( add : in  STD_LOGIC_VECTOR (N-1 downto 0);--Suma
       sub : in  STD_LOGIC_VECTOR (N-1 downto 0);--Resta
       sel : in  STD_LOGIC_vector(1 downto 0);
       salida : out  STD_LOGIC_VECTOR (N-1 downto 0));
end MuxN;

architecture Behavioral of MuxN is
begin
p1: process (add,sub,sel)
 
begin 
       case (to_integer(unsigned(sel)))  is
 
 
 
when 0 => salida <= add; 
when 1 => salida <= sub; 
when others => salida <= add; 
 
 
end case; 
 
end process; 
end Behavioral; 

