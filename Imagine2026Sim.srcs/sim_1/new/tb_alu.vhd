----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/25/2026 12:21:10 PM
-- Design Name: 
-- Module Name: tb_alu - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity alu_tb is
end alu_tb;

architecture sim of alu_tb is

    constant N : integer := 8;
    constant M : integer := 4;

    signal A     : std_logic_vector(N-1 downto 0);
    signal B     : std_logic_vector(N-1 downto 0);
    signal ALUOp : std_logic_vector(3 downto 0);
    signal Y     : std_logic_vector(N-1 downto 0);

begin

    DUT : entity work.alu
        generic map (
            N => N,
            M => M
        )
        port map (
            A     => A,
            B     => B,
            ALUOp => ALUOp,
            Y     => Y
        );

    stim_proc : process
    begin

        -- Test ADD: 5 + 3 = 8
        A <= std_logic_vector(to_unsigned(5, N));
        B <= std_logic_vector(to_unsigned(3, N));
        ALUOp <= "0000";
        wait for 50 ns;

        assert Y = std_logic_vector(to_unsigned(8, N))
            report "ADD failed"
            severity error;


        -- Test SUB: 5 - 3 = 2
        A <= std_logic_vector(to_unsigned(5, N));
        B <= std_logic_vector(to_unsigned(3, N));
        ALUOp <= "0001";
        wait for 50 ns;

        assert Y = std_logic_vector(to_unsigned(2, N))
            report "SUB failed"
            severity error;


        -- Test AND
        A <= "10101010";
        B <= "11001100";
        ALUOp <= "0010";
        wait for 50 ns;

        assert Y = "10001000"
            report "AND failed"
            severity error;


        -- Test OR
        A <= "10101010";
        B <= "11001100";
        ALUOp <= "0100";
        wait for 50 ns;

        assert Y = "11101110"
            report "OR failed"
            severity error;


        -- Test XOR
        A <= "10101010";
        B <= "11001100";
        ALUOp <= "0110";
        wait for 50 ns;

        assert Y = "01100110"
            report "XOR failed"
            severity error;


        -- Test NOT
        A <= "10101010";
        B <= "00000000";
        ALUOp <= "1000";
        wait for 50 ns;

        assert Y = "01010101"
            report "NOT failed"
            severity error;


        -- Test invalid ALUOp gives 0
        A <= "11111111";
        B <= "11111111";
        ALUOp <= "1111";
        wait for 50 ns;

        assert Y = "00000000"
            report "Invalid ALUOp failed"
            severity error;


        report "All ALU tests completed";
        wait;

    end process;

end sim;
