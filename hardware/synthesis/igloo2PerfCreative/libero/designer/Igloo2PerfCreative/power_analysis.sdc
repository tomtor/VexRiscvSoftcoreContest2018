create_clock -name {oscToCcc} -period 20 -waveform {0 10 } [ get_pins { oscInst/osc1_0/I_RCOSC_25_50MHZ/CLKOUT } ]
create_generated_clock -name {cccGL0} -multiply_by 4 -divide_by 2 -source [ get_pins { cccInst/ccc1_0/CCC_INST/RCOSC_25_50MHZ } ] -phase 0 [ get_pins { cccInst/ccc1_0/CCC_INST/GL0 } ]
