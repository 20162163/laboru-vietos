--Papildomos uzd pavyzdys is paskaitos su lentele
--conditional budas
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
--entity
entity mano is
port ( SEL	:	in std_logic_vector(1 downto 0);
	   o_F	:	out std_logic_vector(2 downto 0));
end mano;
--architecture
architecture mano_vykdo of mano is
begin
	o_F <= "011" when (SEL = "00") else
		   "100" when (SEL = "01") else
		   "101" when (SEL = "10") else
		   "110" when (SEL = "11") else
		   "000";
end mano_vykdo;