library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity count4 is
  port
  (
    CLK : in  std_logic;
    Q   : out std_logic_vector(3 downto 0)
  );
end count4;

architecture rtl of count4 is
  
  signal tmp: unsigned(3 downto 0) := "0000";

----------------------------------------------------------------------------------------------------
begin
----------------------------------------------------------------------------------------------------  

  process (CLK)
  begin
    if (rising_edge(CLK)) then
      tmp <= tmp + 1;
    end if;
  end process;
  
  Q <= std_logic_vector(tmp);

end rtl;
