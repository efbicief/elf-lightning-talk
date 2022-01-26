echo ""
echo "> nasm -f bin tiny_4.asm"
nasm -f bin tiny_4.asm
echo "> ./a.out; echo $?"
./a.out; echo $?
echo "> wc -c a.out"
wc -c a.out
echo ""