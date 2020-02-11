library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
entity fd is
port(
ClockIn :in std_logic;
FdOUT :out std_logic;
FdOUT1 :out std_logic
);
end;

architecture flow of fd is
signal temp :std_logic:='1';
signal temp1 :std_logic:='1';
begin 
process(ClockIn)
variable i :integer range 0 to 25000000;
variable j :integer range 0 to 25000000;
begin
if(ClockIn'event and ClockIn='1') then
i:=i+1;
if(i=12500) then
temp<= not temp;
i:=0;
end if;
j:=j+1;
if(j=300000) then
temp1<= not temp1;
j:=0;
end if;
end if;
end process;
FdOUT<=temp;
FdOUT1<=temp1;
end;