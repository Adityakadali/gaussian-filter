library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;
entity finalmodule is
port ( ce : in std_logic;
clk_in : in std_logic;
hc_result : out std_logic_vector (37 downto 0));
end finalmodule;
architecture BEHAVIORAL of finalmodule is
signal XLXN_4 : std_logic_vector (17 downto 0);
signal XLXN_5 : std_logic_vector (17 downto 0);
signal XLXN_6 : std_logic_vector (35 downto 0);
signal XLXN_7 : std_logic_vector (17 downto 0);
signal XLXN_8 : std_logic_vector (17 downto 0);
signal XLXN_9 : std_logic_vector (17 downto 0);
signal XLXN_10 : std_logic_vector (17 downto 0);
signal XLXN_11 : std_logic_vector (17 downto 0);

signal XLXN_12 : std_logic_vector (17 downto 0);
signal XLXN_13 : std_logic_vector (17 downto 0);
signal XLXN_14 : std_logic_vector (17 downto 0);
signal XLXN_15 : std_logic_vector (17 downto 0);
signal XLXN_16 : std_logic_vector (17 downto 0);
signal XLXN_17 : std_logic_vector (17 downto 0);
signal XLXN_18 : std_logic_vector (17 downto 0);
signal XLXN_19 : std_logic_vector (17 downto 0);
signal XLXN_20 : std_logic_vector (17 downto 0);
signal XLXN_21 : std_logic_vector (17 downto 0);
signal XLXN_22 : std_logic_vector (17 downto 0);
signal XLXN_23 : std_logic_vector (35 downto 0);
signal XLXN_24 : std_logic_vector (35 downto 0);
signal XLXN_25 : std_logic_vector (35 downto 0);
signal XLXN_26 : std_logic_vector (35 downto 0);
signal XLXN_27 : std_logic_vector (35 downto 0);
signal XLXN_28 : std_logic_vector (35 downto 0);
signal XLXN_29 : std_logic_vector (35 downto 0);
signal XLXN_30 : std_logic_vector (35 downto 0);
component topmodule2
port ( clk_in : in std_logic;
ce : in std_logic;
hm8 : out std_logic_vector (17 downto 0);
hm7 : out std_logic_vector (17 downto 0);
hm6 : out std_logic_vector (17 downto 0);
hm5 : out std_logic_vector (17 downto 0);
hm4 : out std_logic_vector (17 downto 0);
hm3 : out std_logic_vector (17 downto 0);
hm2 : out std_logic_vector (17 downto 0);
hm1 : out std_logic_vector (17 downto 0);
hm0 : out std_logic_vector (17 downto 0);
i08 : out std_logic_vector (17 downto 0);
i07 : out std_logic_vector (17 downto 0);
i06 : out std_logic_vector (17 downto 0);
i05 : out std_logic_vector (17 downto 0);
i04 : out std_logic_vector (17 downto 0);
i03 : out std_logic_vector (17 downto 0);
i02 : out std_logic_vector (17 downto 0);
i01 : out std_logic_vector (17 downto 0);
i00 : out std_logic_vector (17 downto 0));
end component;

component adder_36
port ( clk_in : in std_logic;
m00 : in std_logic_vector (35 downto 0);
m01 : in std_logic_vector (35 downto 0);
m02 : in std_logic_vector (35 downto 0);
m03 : in std_logic_vector (35 downto 0);
m04 : in std_logic_vector (35 downto 0);
m05 : in std_logic_vector (35 downto 0);
m06 : in std_logic_vector (35 downto 0);
m07 : in std_logic_vector (35 downto 0);
m08 : in std_logic_vector (35 downto 0);
hc_result : out std_logic_vector (37 downto 0));
end component;


component smultipliers
port ( a : in std_logic_vector (17 downto 0);
b : in std_logic_vector (17 downto 0);
clk : in std_logic;
ce : in std_logic;
p : out std_logic_vector (35 downto 0));
end component;

begin
XLXI_1 : topmodule2
port map (ce=>ce,
clk_in=>clk_in,
hm0(17 downto 0)=>XLXN_22(17 downto 0),
hm1(17 downto 0)=>XLXN_20(17 downto 0),
hm2(17 downto 0)=>XLXN_18(17 downto 0),
hm3(17 downto 0)=>XLXN_16(17 downto 0),
hm4(17 downto 0)=>XLXN_14(17 downto 0),
hm5(17 downto 0)=>XLXN_12(17 downto 0),
hm6(17 downto 0)=>XLXN_8(17 downto 0),
hm7(17 downto 0)=>XLXN_7(17 downto 0),
hm8(17 downto 0)=>XLXN_5(17 downto 0),
i00(17 downto 0)=>XLXN_4(17 downto 0),
i01(17 downto 0)=>XLXN_9(17 downto 0),
i02(17 downto 0)=>XLXN_10(17 downto 0),
i03(17 downto 0)=>XLXN_11(17 downto 0),
i04(17 downto 0)=>XLXN_13(17 downto 0),
i05(17 downto 0)=>XLXN_15(17 downto 0),
i06(17 downto 0)=>XLXN_17(17 downto 0),
i07(17 downto 0)=>XLXN_19(17 downto 0),
i08(17 downto 0)=>XLXN_21(17 downto 0));

XLXI_2 : adder_36
port map (clk_in=>clk_in,
m00(35 downto 0)=>XLXN_6(35 downto 0),
m01(35 downto 0)=>XLXN_23(35 downto 0),
m02(35 downto 0)=>XLXN_24(35 downto 0),
m03(35 downto 0)=>XLXN_25(35 downto 0),
m04(35 downto 0)=>XLXN_26(35 downto 0),
m05(35 downto 0)=>XLXN_27(35 downto 0),
m06(35 downto 0)=>XLXN_28(35 downto 0),
m07(35 downto 0)=>XLXN_29(35 downto 0),
m08(35 downto 0)=>XLXN_30(35 downto 0),
hc_result(37 downto 0)=>hc_result(37 downto 0));

XLXI_3 : smultipliers
port map (a(17 downto 0)=>XLXN_4(17 downto 0),
b(17 downto 0)=>XLXN_5(17 downto 0),
ce=>ce,
clk=>clk_in,
p(35 downto 0)=>XLXN_6(35 downto 0));

XLXI_4 : smultipliers
port map (a(17 downto 0)=>XLXN_9(17 downto 0),
b(17 downto 0)=>XLXN_7(17 downto 0),
ce=>ce,
clk=>clk_in,

p(35 downto 0)=>XLXN_23(35 downto 0));

XLXI_5 : smultipliers
port map (a(17 downto 0)=>XLXN_10(17 downto 0),
b(17 downto 0)=>XLXN_8(17 downto 0),
ce=>ce,
clk=>clk_in,
p(35 downto 0)=>XLXN_24(35 downto 0));

XLXI_6 : smultipliers
port map (a(17 downto 0)=>XLXN_11(17 downto 0),
b(17 downto 0)=>XLXN_12(17 downto 0),
ce=>ce,
clk=>clk_in,
p(35 downto 0)=>XLXN_25(35 downto 0));

XLXI_7 : smultipliers
port map (a(17 downto 0)=>XLXN_13(17 downto 0),
b(17 downto 0)=>XLXN_14(17 downto 0),
ce=>ce,
clk=>clk_in,
p(35 downto 0)=>XLXN_26(35 downto 0));

XLXI_8 : smultipliers
port map (a(17 downto 0)=>XLXN_15(17 downto 0),
b(17 downto 0)=>XLXN_16(17 downto 0),
ce=>ce,
clk=>clk_in,
p(35 downto 0)=>XLXN_27(35 downto 0));

XLXI_9 : smultipliers
port map (a(17 downto 0)=>XLXN_17(17 downto 0),
b(17 downto 0)=>XLXN_18(17 downto 0),
ce=>ce,
clk=>clk_in,
p(35 downto 0)=>XLXN_28(35 downto 0));

XLXI_10 : smultipliers
port map (a(17 downto 0)=>XLXN_19(17 downto 0),
b(17 downto 0)=>XLXN_20(17 downto 0),
ce=>ce,
clk=>clk_in,
p(35 downto 0)=>XLXN_29(35 downto 0));

XLXI_11 : smultipliers
port map (a(17 downto 0)=>XLXN_21(17 downto 0),
b(17 downto 0)=>XLXN_22(17 downto 0),
ce=>ce,
clk=>clk_in,
p(35 downto 0)=>XLXN_30(35 downto 0));

end BEHAVIORAL;
