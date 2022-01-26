echo ""
echo "> gcc -Wall -s -O3 tiny.c"
gcc -Wall -s -O3 tiny.c
echo "> ./a.out; echo $?"
./a.out; echo $?
echo "> wc -c a.out"
wc -c a.out
echo ""