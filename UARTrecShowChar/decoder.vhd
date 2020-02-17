library IEEE;
use ieee.std_logic_1164.all;

ENTITY decoder IS
port(
k1: in std_logic_vector(3 downto 0);
led: out std_logic_vector(0 to 7)
);
end;
architecture bea of decoder is
begin
process(k1)
begin
case k1 is
	when "0000" => led <="00000011";
	when "0001" => led <="10011111";
	when "0010" => led <="00100101";
	when "0011" => led <="00001101";
	when "0100" => led <="10011001";
	when "0101" => led <="01001001";
	when "0110" => led <="01000001";
	when "0111" => led <="00011111";
	when "1000" => led <="00000001";
	when "1001" => led <="00001001";
	when others => led <="00000000";
end case;

end process;
end architecture bea;