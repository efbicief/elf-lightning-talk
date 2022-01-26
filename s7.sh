echo ""
echo "> nasm -f bin tiny_4.asm"
nasm -f bin tiny_4.asm
echo "> ./tiny_4; echo $?"
./tiny_4; echo $?
echo "> wc -c tiny_4"
wc -c tiny_4
echo ""