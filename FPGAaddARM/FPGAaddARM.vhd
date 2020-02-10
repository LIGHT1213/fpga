library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
entity FPGAaddARM is
port(
CIn :in std_logic;
ClockIn :in std_logic;
LOUT :out std_logic
);
end;

architecture flow of FPGAaddARM is
signal temp :std_logic:='0';
signal temp1 :std_logic:='0';

component fd
port(
ClockIn :in std_logic;
FdOUT :out std_logic;
FdOUT1 :out std_logic
);
end component;


BEGIN
process(cin,ClockIn)
begin
if(ClockIn'event and ClockIn='1') then
if(cin='1') then
louT<='1';
elsif(cin='0') then
louT<='0';
end if;
end if;
end process;
f1:fd port map (clockin,temp,temp1);
end;