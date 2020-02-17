library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
USE ieee.numeric_std.ALL;
ENTITY translate IS
port(
ascii: in std_logic_vector(7 downto 0);
num: out std_logic_vector(0 to 3)
);
end translate;
architecture RTL of translate is
begin
process(ascii)
begin
case ascii is
	when "00110000" => num <="0000";
	when "00110001" => num <="0001";
	when "00110010" => num <="0010";
	when "00110011" => num <="0011";
	when "00110100" => num <="0100";
	when "00110101" => num <="0101";
	when "00110110" => num <="0110";
	when "00110111" => num <="0111";
	when "00111000" => num <="1000";
	when "00111001" => num <="1001";
	when others => num <="0000";
end case;

end process;
end architecture RTL;