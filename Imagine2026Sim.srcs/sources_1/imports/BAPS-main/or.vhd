library ieee;
use ieee.std_logic_1164.all;

entity orN is
  generic
  (
    N : integer := 16
  );
  port
  (
    A, B : in std_logic_vector(N-1 downto 0);
    Y : out std_logic_vector(N-1 downto 0)
  );
end orN;

architecture structural of orN is

begin

    Y <= A or B;

end structural;