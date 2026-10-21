-- Seth Taylor
library ieee;
use ieee.std_logic_1164.all;

entity xorN is 
    generic (
        N : integer := 8
    );
    port 
    (
        a, b: in std_logic_vector(N-1 downto 0);
        Y : out std_logic_vector(N-1 downto 0)
    );
end xorN;

architecture Behavioral of xorN is
begin
    y <= (a and not b) or (not a and b);
end Behavioral; 
