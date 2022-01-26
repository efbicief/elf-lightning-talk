echo ""
echo "> nasm -f elf64 tiny_3.asm"
nasm -f elf64 tiny_3.asm
echo "> ld -s tiny_3.o"
ld -s tiny_3.o
echo "> ./a.out; echo $?"
./a.out; echo $?
echo "> wc -c a.out"
wc -c a.out
echo ""