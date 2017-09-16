library ieee;
use ieee.std_logic_1164.all;


entity PG_gen is
        port (
                 p1: in std_logic;
                 g1: in std_logic;
                 p2: in std_logic;
                 g2: in std_logic;

                 g: out std_logic;
                 p: out std_logic


    );
    end PG_gen;

architecture behavior of PG_gen is
begin
    g <= g1 or (p1 and g2);	--Gi:j = Gi:k + Pi:k � Gk-1:j 
    p <= p1 and p2; 			--Pi:j = Pi:k � Pk-1:j

end behavior;
