global MAIN
extern mains
global FPC_LIB_EXIT
global PC_LIB_EXIT
global fpc_libinitializeunits
global THREADVARLIST_$SYSTEM$indirect
global INIT$_$SYSTEM
extern P$KERNEL_$$_MAINS
MAIN:
	
	call P$KERNEL_$$_MAINS
haltss:
    jmp haltss
    INIT$_$SYSTEM:
THREADVARLIST_$SYSTEM$indirect:
FPC_LIB_EXIT:
PC_LIB_EXIT:
fpc_libinitializeunits:
ret
HREADVARLIST_x86indirect:
