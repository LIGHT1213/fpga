library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
USE ieee.numeric_std.ALL;
entity uart_rx is
generic(framlenr:integer:=8);
port(
TESTOUT :OUT STD_Logic_vector(7 DOWNTo 0);
CLOckIn :IN STD_logic;
RX :IN STD_logic;
r_ready:out std_logic;
RESet:in STD_logic
);
END UARt_rx;
architecture RTL OF uart_rx is

type uart_rx_state is(r_start,r_center,r_wait,r_sample,r_stop);

signal state:uart_rx_state:=r_start;
signal rxd_sync:std_logic;
signal temp: std_logic;
signal temp1 :std_logic;
signal temp2 :std_logic;
component fd
port(
ClockIn :in std_logic;
FdOUT :out std_logic;
FdOUT1 :out std_logic;
FdOUT2 :out std_logic
);
end component;
begin
f1:fd port map (clockin,temp,temp1,temp2);

process(RX)
begin
if rx='0' then
rxd_sync<='0';
else rxd_sync<='1';
end if;
end process;

process(temp2,reset,rxd_sync)
variable count:std_logic_vector(3 downto 0);                     
variable rcnt:integer:=0;
variable rbufs:std_logic_vector(7 downto 0);
begin
if reset='0' then state<=r_start;count:="0000";
elsif rising_edge(temp2) then
 case state is
	when r_start=>
		if rxd_sync='0' then state<=r_center;r_ready<='0';rcnt:=0;
			else state<=r_start;r_ready<='0';
			end if;
	when r_center=>
		if rxd_sync='0' then
			if count="0100" then state<=r_wait;count:="0000";
			else count:=count+'1';state<=r_center;
			end if;
		else state<=r_start;
		end if;
	when r_wait=>
	if count>="1110" then
		if rcnt=framlenr then state <= r_stop;
		else state<=r_sample;
		end if;
		count:="0000";
	else count:=count+'1';state<=r_wait;
	end if;
	when r_sample=>rbufs(rcnt):=rxd_sync;rcnt:=rcnt+1;state<=r_wait;
	when r_stop=>r_ready<='1';TESTOUT<=rbufs;state<=r_start;
	when others=>state<=r_start;
	end case;
	end if;
	end process;
end ;







