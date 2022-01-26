echo ""
echo "> gcc -Wall tiny.c"
gcc -Wall tiny.c
echo "> ./a.out; echo $?"
./a.out; echo $?
echo "> wc -c a.out"
wc -c a.out
echo ""