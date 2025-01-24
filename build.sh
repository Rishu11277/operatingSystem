nasm -f bin boot.asm -o boot.bin
gcc -ffreestanding -o kernel.bin -nostdlib -m32 -O2 kernel.c -e _start
dd if=boot.bin of=disk.img bs=512 count=1 conv=notrunc
dd if=kernel.bin of=disk.img bs=512 seek=1 conv=notrunc
git add boot.bin kernel.bin disk.img boot.asm kernel.c .boshsrc build.sh
git commit -m "Add blahblah sheep"
git push origin main
