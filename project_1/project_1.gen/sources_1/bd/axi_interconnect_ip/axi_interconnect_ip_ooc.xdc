################################################################################

# This XDC is used only for OOC mode of synthesis, implementation
# This constraints file contains default clock frequencies to be used during
# out-of-context flows such as OOC Synthesis and Hierarchical Designs.
# This constraints file is not used in normal top-down synthesis (default flow
# of Vivado)
################################################################################
create_clock -name ACLK_0 -period 100 [get_ports ACLK_0]
create_clock -name M00_ACLK_0 -period 10 [get_ports M00_ACLK_0]
create_clock -name S00_ACLK_0 -period 10 [get_ports S00_ACLK_0]
create_clock -name S01_ACLK_0 -period 10 [get_ports S01_ACLK_0]

################################################################################