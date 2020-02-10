library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
entity ledtest is
port(
hex: out std_logic_vector(0 to 7);
sin: out bit_vector(0 to 5);
clockin:in std_logic
);
end;
architecture flow of showchar is
signal temp :std_logic:='0';
signal temp1 :std_logic:='0';
signal choose :bit_vector(0 to 5):="111110";
signal num :std_logic_vector(3 downto 0):="0000";
signal num1 :std_logic_vector(3 downto 0):="0000";
signal num2 :std_logic_vector(3 downto 0):="0001";
signal num3 :std_logic_vector(3 downto 0):="0010";
signal num4 :std_logic_vector(3 downto 0):="0011";
signal num5 :std_logic_vector(3 downto 0):="0100";
signal num6 :std_logic_vector(3 downto 0):="0101";
component fd
port(
ClockIn :in std_logic;
FdOUT :out std_logic;
FdOUT1 :out std_logic
);
end component;
begin
