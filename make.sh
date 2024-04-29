printf "\x1bc\x1b[43;37m give me a .c file to compile ? "
read ai
nasm -o /tmp/boot.bin boot.asm
nasm -f elf32 -o /tmp/codes.o codes.s
cp -f "$ai" /tmp/kernel.pas
fpc -Cn -CcCDECL -O2 -Xs -Xs -Xt -Pi386 -Tlinux  "/tmp/kernel.pas" 
ld -T link.ld /tmp/codes.o /tmp/kernel.o -o /tmp/hello.com -nostdlib
objcopy -O binary  /tmp/hello.com  /tmp/hellos.com
dd if=/tmp/hellos.com of=/tmp/boot.bin seek=1 conv=notrunc
cp -f /tmp/boot.bin ./
/usr/bin/qemu-system-x86_64 -boot a -fda boot.bin
