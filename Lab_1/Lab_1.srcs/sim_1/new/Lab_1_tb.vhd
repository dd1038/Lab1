--
-- filename:    blinker_tb.vhd
-- written by:  steve dinicolantonio
-- description: testbench for blinker.vhd
-- notes:       
--
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;

entity blinker_tb is
end blinker_tb;

architecture testbench of Lab_1 is

    signal tb_clk : std_logic := '0';
    signal tb_en : std_logic;
 
    
    component Lab_1 is
        port(
        
            clk  : in std_logic;       -- 125 Mhz clock
            en : out std_logic
        );
    end component;

begin

--------------------------------------------------------------------------------
-- procs
--------------------------------------------------------------------------------

    -- simulate a 125 Mhz clock
    clk_gen_proc: process
    begin
    
        wait for 4 ns;
        tb_clk <= '1';
        
        wait for 4 ns;
        tb_clk <= '0';
    
    end process clk_gen_proc;
    
    
--------------------------------------------------------------------------------
-- port mapping
--------------------------------------------------------------------------------

    dut : Lab_1
    port map (
    
        clk  => tb_clk,
        en => tb_en
    
    );

    
end testbench; 