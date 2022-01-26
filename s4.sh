echo ""
echo "> nasm -f elf64 tiny_2.asm"
nasm -f elf64 tiny_2.asm
echo "> gcc -Wall -s -O3 -nostdlib tiny_1.o"
gcc -Wall -s -O3 -nostdlib tiny_2.o
echo "> ./a.out; echo $?"
./a.out; echo $?
echo "> wc -c a.out"
wc -c a.out
echo ""