library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity FFT_Unit is
 Port (
 clk : in std_logic;
  rst : in std_logic;
  start : in std_logic;
  input_data : in std_logic_vector(18 downto 0);
   output_data :out std_logic_vector(18 downto 0);
   done : out std_logic
  );
end FFT_Unit;

architecture Behavioral of FFT_Unit is

begin

process (clk,rst)
begin
if rst = '1' then
output_data <= (others =>'0');
done <= '0';

elsif rising_edge(clk) then
 if start = '1'then

output_data <= input_data;

   done <= '1';
else
    done <= '0';

end if;
end if;
end process;
