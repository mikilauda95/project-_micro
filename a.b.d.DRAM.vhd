library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity DRAM is
    generic (
                DRAM_DEPTH : integer := 4*32;
                DATA_SIZE : integer := 8;
                WORD_SIZE : integer := 32;
                ADDR_SIZE : integer := 32);
    port (
             Rst  : in  std_logic;
             WR_enable  : in  std_logic;
             Addr : in  std_logic_vector(ADDR_SIZE - 1 downto 0); 
             Din : in  std_logic_vector(WORD_SIZE - 1 downto 0);
             Dout : out std_logic_vector(WORD_SIZE - 1 downto 0)
         );

end DRAM;

architecture Dram_Beh of DRAM is

    type RAMtype is array (0 to DRAM_DEPTH - 1) of std_logic_vector(DATA_SIZE - 1 downto 0); --memory with word equal to byte

    signal DRAM_mem : RAMtype;

begin  -- SRam_Bhe

    DRAM_proc: process (Rst, WR_enable)
    begin  -- process FILL_MEM_P
        if (Rst = '0') then
            if (WR_enable = '1' ) then --Writing on the memory
                DRAM_mem(conv_integer(unsigned(Addr))) <= Din(WORD_SIZE -1 downto WORD_SIZE-8) ;
                DRAM_mem(conv_integer(unsigned(Addr))+1) <= Din(WORD_SIZE -9 downto WORD_SIZE-16) ;
                DRAM_mem(conv_integer(unsigned(Addr))+2) <= Din(WORD_SIZE -17 downto WORD_SIZE-24) ;
                DRAM_mem(conv_integer(unsigned(Addr))+3) <= Din(WORD_SIZE -25 downto WORD_SIZE-32) ;
            else --Reading from memory (WR = 0)
                Dout(WORD_SIZE-1 downto WORD_SIZE-8) <= DRAM_mem(conv_integer(unsigned(Addr)));
                Dout(WORD_SIZE -9 downto WORD_SIZE-16) <= DRAM_mem(conv_integer(unsigned(Addr))+1);
                Dout(WORD_SIZE -17 downto WORD_SIZE-24) <= DRAM_mem(conv_integer(unsigned(Addr))+2);
                Dout(WORD_SIZE -25 downto WORD_SIZE-32) <= DRAM_mem(conv_integer(unsigned(Addr))+3);
            end if;
        end if;
    end process DRAM_proc;

end Dram_Beh;
