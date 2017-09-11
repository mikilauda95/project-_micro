vcom "a.b.a.log.vhd"
vcom "000-globals.vhd"
vcom *.vhd

vsim work.tb_dlx(test)

add wave -position insertpoint sim:/tb_dlx/DLX_0/datapath_1/*
add wave -position insertpoint sim:/tb_dlx/DLX_0/datapath_1/DataRam/*
add wave -position insertpoint sim:/tb_dlx/DLX_0/dlx_cu_0/*
add wave -position insertpoint sim:/tb_dlx/DLX_0/datapath_1/register_file_0/*
add wave -position insertpoint sim:/tb_dlx/DLX_0/IRAM_0/*
add wave -position insertpoint sim:/tb_dlx/DLX_0/datapath_1/forwarder_0/*



run 250 ns
