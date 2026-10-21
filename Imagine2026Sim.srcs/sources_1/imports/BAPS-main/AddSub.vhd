--Seth Taylor
library ieee;
use ieee.std_logic_1164.all;

entity addSub is
    generic
    (
        N : integer := 4
    );
    port
    (
        a   : in  std_logic_vector(N-1 downto 0);
        b   : in  std_logic_vector(N-1 downto 0);
        sel : in  std_logic; -- 0 = add, 1 = subtract input coming from ALU 
        y   : out std_logic_vector(N-1 downto 0);
        cout: out std_logic
    );
end addSub;

architecture Structural of addSub is

    signal b_sub : std_logic_vector(N-1 downto 0);
    signal c     : std_logic_vector(N downto 0);

    component fullAdder is
        port(
            a    : in  std_logic;
            b    : in  std_logic;
            cin  : in  std_logic;
            sum  : out std_logic;
            cout : out std_logic
        );
    end component;

begin

    b_sub <= b xor (N-1 downto 0 => sel); -- Invert bit for subtractions

    -- 0 for addition, 1 for subtraction
    c(0) <= sel;

    GEN_FA : for i in 0 to N-1 generate
        FA_i : fullAdder
            port map(
                a    => a(i),
                b    => b_sub(i),
                cin  => c(i),
                sum  => y(i),
                cout => c(i+1)
            );
    end generate;

    cout <= c(N);

end Structural;