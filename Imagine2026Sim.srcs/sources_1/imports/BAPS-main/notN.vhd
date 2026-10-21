-- Seth Taylor
library ieee;
use ieee.std_logic_1164.all;
entity notN is 
    generic(
        N : integer := 16
    );
    port (a: in std_logic_vector(N-1 downto 0);
          y: out std_logic_vector(N-1 downto 0)
          );
end notN;
architecture Behavioral of notN is
begin
    y <= not a;
end Behavioral;
