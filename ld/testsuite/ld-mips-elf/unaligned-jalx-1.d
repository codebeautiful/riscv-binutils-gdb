#name: MIPS JALX to unaligned symbol 1
#source: unaligned-jalx-1.s
#source: unaligned-insn.s -mips16
#as: -EB -32
#ld: -EB -Ttext 0x1c000000 -e 0x1c000000
#error: \A[^\n]*: In function `foo':\n
#error:   \(\.text\+0x[0-9a-f]+\): JALX to a non-word-aligned address\n
#error:   [^\n]*: final link failed: Bad value\Z
