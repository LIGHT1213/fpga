library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
ENTITY UART_rx IS
PORt
(
TESTOUT :out std_logic_vector(7 downto 0);
CLOckIn :IN STD_logic;
RX :in STD_logic;
RESet:in STD_logic;

text1: buffer std_logic_vector(0 TO 7)
);
END;
architecture RTL of uart_rx is
signal charnR: std_logic_vector(0 to 7):="10010001";
signal temp: std_logic;
signal temp1 :std_logic;
component fd
port(
ClockIn :in std_logic;
FdOUT :out std_logic;
FdOUT1 :out std_logic
);
end component;

TYPE UART_RX_STATE IS (IDLE, RXR, RXING, RXE);  
	SIGNAL RXState : UART_RX_STATE:=IDLE;
begin
f1:fd port map (clockin,temp,temp1);
TEXt1<=charnR;
process(temp)
variable n:integer:=-2;
begin
IF(RESet='0') THEN
n:=-1;
RXState<= IDLE;
ELSIF rising_edge(temp) THEN
	CASE RXState IS
		WHEN IDLE => 
			IF RX='0' THEN 
				RXState <= RXING; 
				n:=0;
			END IF;
		WHEN RXR =>
				RXState <= RXING; 
				n:=0;
		when RXING =>  
			charnR(n)<=RX;
			n:=n+1;
			if(n=8) then 
			RXState<=RXE;
			end if;
		when RXE =>
			if(rx='1') then
			RXState<= IDLE;
			n:=-1;
			TESTOUT<=charnR;
			end if;
	END CASE;
END IF;
end process;
end;