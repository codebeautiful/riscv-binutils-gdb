#objdump : -s -j .data -j "\$DATA\$"
#name : .sleb128 tests (5)
# RISC-V doesn't support .sleb operands that are the difference of two symbols
# because symbol values are not known until after linker relaxation has been
# performed.
#not-target : riscv*-*-*

.*: .*

Contents of section (\.data|\$DATA\$):
 .* 012a.*
