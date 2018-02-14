connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Digilent Cmod A7 - 15T 210328A2B3E4A"} -index 0
rst -system
after 3000
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Digilent Cmod A7 - 15T 210328A2B3E4A"} -index 0
dow D:/Nora/Intan_project/uart_to_spim/uart_to_spim.sdk/blabla/Debug/blabla.elf
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Digilent Cmod A7 - 15T 210328A2B3E4A"} -index 0
con
