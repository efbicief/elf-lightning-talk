echo ""
echo "> nasm -f elf64 tiny_1.asm"
nasm -f elf64 tiny_1.asm
echo "> gcc -Wall -s -O3 tiny_1.o"
gcc -Wall -s -O3 tiny_1.o
echo "> ./a.out; echo $?"
./a.out; echo $?
echo "> wc -c a.out"
wc -c a.out
echo ""