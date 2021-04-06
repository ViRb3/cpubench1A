// Purpose of this assembly file is to measure the CPU frequency by running a workload
// for which we can easily count the number of cycles. The instructions have to be dependent,
// so that they cannot be parallelized by the CPU.

#include "textflag.h"

// func CountASM(n int64) int
TEXT ·CountASM(SB), NOSPLIT, $0-16
	MOVD n+0(FP), R0
	MOVD $0x01, R1
loop:
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	SUB R1, R0, R0
	CMP $0x00, R0
	BNE  loop
	MOVD R0, ret+8(FP)
	RET