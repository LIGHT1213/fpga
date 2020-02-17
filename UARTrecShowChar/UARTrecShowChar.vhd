library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
entity UARTrecShowChar is
port(
hex: out std_logic_vector(0 to 7);
sin: out bit_vector(0 to 5);
CLOckIn :IN STD_logic;
RX :IN STD_logic;
RESet:in STD_logic
);
END UARTrecShowChar;

architecture RTL of UARTrecShowChar is
--signal temp: std_logic;
--signal temp1 :std_logic;
--signal temp2 :std_logic;
signal charnRt: std_logic_vector(7 downto 0);
signal nouse :std_logic;
signal number:std_logic_vector(0 to 3);
component fd
port(
ClockIn :in std_logic;
FdOUT :out std_logic;
FdOUT1 :out std_logic;
FdOUT2 :out std_logic
);
end component;
component decoder
port(
k1: in std_logic_vector(3 downto 0);
led: out std_logic_vector(0 to 7)
);
end component;
component uart_rx
PORt
(
TESTOUT :OUT STD_Logic_vector(7 DOWNTo 0);
CLOckIn :IN STD_logic;
RX :IN STD_logic;
r_ready:out std_logic;
RESet:in STD_logic
);
END component;
component translate
port
(
ascii: in std_logic_vector(7 downto 0);
num: out std_logic_vector(0 to 3)
);
END component;
begin
sin<="111110";
r1:uart_rx port map(charnRt,clockIn,RX,nouse,reset);
t1:translate port map(charnRt,number);
d1:decoder port map(number,hex);
end;