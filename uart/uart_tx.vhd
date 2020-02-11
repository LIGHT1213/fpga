library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
ENTITY UART_tx IS
PORt
(
TESTIN :IN STD_Logic_vector(7 DOWNTo 0):="01000011";
CLOckIn :IN STD_logic;
TX :OUT STD_logic:='1';
RESet:in STD_logic;

text1: buffer std_logic
);
END;
architecture RTL of UART_tx is
signal charn: std_logic_vector(7 downto 0):="01000011";
signal temp: std_logic;
signal temp1 :std_logic;
signal ReSend :std_logic:='1';
component fd
port(
ClockIn :in std_logic;
FdOUT :out std_logic;
FdOUT1 :out std_logic
);
end component;

TYPE UART_TX_STATE IS (IDLE, TXR, TXING, TXE);  
	SIGNAL TXState : UART_TX_STATE:=IDLE;
begin
f1:fd port map (clockin,temp,temp1);
text1<=temp;
charn<=TESTIN;
process(temp)
variable n:integer:=-2;
begin
IF(RESet='0') THEN
n:=-1;
TXState<= IDLE;
ELSIF rising_edge(temp) THEN
	CASE TXState IS
		WHEN IDLE => 
			IF n=-1 THEN 
				TXState <= TXR; 
			END IF;
		WHEN TXR =>
				tx<='0';
				TXState <= TXING; 
				n:=0;
		when TXING =>  
			tx<=charn(n);
			n:=n+1;
			if(n=8) then 
			TXState<= TXE;
			end if;
		when TXE =>
			tx<='1';
			n:=-1;
			TXState<= IDLE;
	END CASE;
END IF;
end process;
process(temp1)
begin
if(rising_edge(temp1)) then
ReSend<=not ReSend;
end if;
end process;
end;