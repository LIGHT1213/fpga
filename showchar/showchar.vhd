library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
entity showchar is
port(
hex: out std_logic_vector(0 to 7);
sin: out bit_vector(0 to 5);
test: inout std_logic;
clockin:in std_logic
);
end;

architecture flow of showchar is

signal temp :std_logic:='0';
signal temp1 :std_logic:='0';
signal temp2 :integer:=0;
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
component decoder
port(
k1: in std_logic_vector(3 downto 0);
led: out std_logic_vector(0 to 7)
);
end component;
begin

sin<=choose;

process(temp)
begin
if(temp'event and temp='1') then
num1<=num1+1;num2<=num2+1;num3<=num3+1;num4<=num4+1;num5<=num5+1;num6<=num6+1;
if(num1=10) then
num1<="0000";
elsif(num2=10) then
num2<="0000";
elsif(num3=10) then
num3<="0000";
elsif(num4=10) then
num4<="0000";
elsif(num5=10) then
num5<="0000";
elsif(num6=10) then
num6<="0000";
end if;
test<=not test;
end if;
end process;

process(temp1)
begin
if(temp1'event and temp1='1') then
temp2<=temp2+1;
if(temp2=30) then 
choose<=(choose ROL 1);
temp2<=0;
end if;
end if;
end process;

num<=num1 when choose ="111110" else
	  num2 when choose ="111101" else
	  num3 when choose ="111011" else
	  num4 when choose ="110111" else
	  num5 when choose ="101111" else
	  num6 when choose ="011111";
de1:decoder port map(num,hex);
f1:fd port map (clockin,temp,temp1);
	  
end;
