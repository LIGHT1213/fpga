library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
ENTITY UART IS
PORt
(
CLOckIn :IN STD_logic;
TX :OUT STD_logic:='1';
RESet:in STD_logic;

text1: buffer std_logic
);
END;
architecture RTL of uart is
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

TYPE UART_STATE IS (IDLE, TXR, TXING, TXE);  
	SIGNAL State : UART_STATE:=IDLE;
begin
f1:fd port map (clockin,temp,temp1);
text1<=temp;
process(temp)
variable n:integer:=-2;
begin
IF(RESet='0' or ReSend='0') THEN
n:=-1;
State<= IDLE;
ELSIF rising_edge(temp) THEN
	CASE State IS
		WHEN IDLE => 
			IF n=-1 THEN 
				State <= TXR; 
			END IF;
		WHEN TXR =>
				tx<='0';
				State <= TXING; 
				n:=0;
		when TXING =>  
			tx<=charn(n);
			n:=n+1;
			if(n=8) then 
			State<= TXE;
			end if;
		when TXE =>
			tx<='1';
			State<= IDLE;
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