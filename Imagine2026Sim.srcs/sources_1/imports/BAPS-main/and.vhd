library ieee;
use ieee.std_logic_1164.all;

entity andN is
  generic 
  (
    N : integer := 8
   );
  port
  (
    A, B : in std_logic_vector(N-1 downto 0);
    Y : out std_logic_vector(N-1 downto 0)
  );

end andN;

architecture structural of andN is

begin

    Y <= A and B;

end structural;