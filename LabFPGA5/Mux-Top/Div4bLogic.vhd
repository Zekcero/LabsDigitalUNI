----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:38:14 05/11/2023 
-- Design Name: 
-- Module Name:    Div4bLogic - Behavioral 
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
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity divider is
  port (
		  operanda:     in std_logic_vector(3 downto 0);
        operandb:     in std_logic_vector(3 downto 0);
        errorsig:     out std_logic := '0';
        result_low:   out std_logic_vector(3 downto 0);
        result_high:  out std_logic_vector(3 downto 0)
  );
  
end entity;

architecture Behavioral of divider is
begin

  UNLABELED:
    process(operanda,operandb)
        variable quotient:  unsigned (3 downto 0);
        variable remainder: unsigned (3 downto 0);
    begin  
	 
        errorsig <= '0';    
        if operandb = "0000" then
        --     i<= 0;
            assert  operandb /= "0000"
                report "Division by Zero Exception"
                severity ERROR;
            errorsig <= '1';
        else 
		  
            quotient := (others => '0');
            remainder := (others => '0');
           for i in 3 downto 0 loop  
               remainder := remainder (2 downto 0) & '0';
               remainder(0) := operanda(i);     
               if remainder >= unsigned(operandb) then  
                    remainder := remainder - unsigned(operandb);
                    quotient(i) := '1';
               end if;
					
            end loop;
            result_high <= std_logic_vector(quotient);
            result_low  <= std_logic_vector(remainder);
			end if;
		  
  end process;
  
end Behavioral;
