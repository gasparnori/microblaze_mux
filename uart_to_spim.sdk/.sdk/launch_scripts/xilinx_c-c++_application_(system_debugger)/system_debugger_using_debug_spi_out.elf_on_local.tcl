connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Digilent Cmod A7 - 15T 210328A2B3E4A"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Digilent Cmod A7 - 15T 210328A2B3E4A"} -index 0
dow D:/Nora/Intan_project/USB/USB.sdk/spi_out/Debug/spi_out.elf
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Digilent Cmod A7 - 15T 210328A2B3E4A"} -index 0
con
