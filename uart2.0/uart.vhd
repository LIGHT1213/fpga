library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
USE ieee.numeric_std.ALL;
ENTITY UART IS
PORt
(
CLOckIn :IN STD_logic;
RX :in STD_logic;
TX :out STD_logic;
RESet:in STD_logic;

text1: buffer std_logic_vector(0 TO 7)
);
END;
architecture RTL of uart is
signal charnRt: std_logic_vector(7 downto 0):="01000101";
signal temp: std_logic;
signal temp1 :std_logic;
signal temp2 :std_logic;
signal nouse :std_logic;
component fd
port(
ClockIn :in std_logic;
FdOUT :out std_logic;
FdOUT1 :out std_logic;
FdOUT2 :out std_logic
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

component uart_tx
PORt
(
TESTIN :IN STD_Logic_vector(7 DOWNTo 0);
CLOckIn :IN STD_logic;
TX :OUT STD_logic:='1';
RESet:in STD_logic;

text1: buffer std_logic
);
END component;
begin
r1:uart_rx port map(charnRt,clockIn,RX,nouse,reset);
t1:uart_tx port map(charnRt,clockIn,TX,reset);
f1:fd port map (clockin,temp,temp1,temp2);

end;