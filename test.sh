#!/usr/bin/bash
m=2
a=2
c=3
seed=4
result=1

echo -e "\nTesting..."

# Python
echo -n -e "\tPython...\t"
py=$(./rand.py $m $a $c $seed)

if [ $py -eq $result ]; then
  echo "PASSED"
else
  echo "FAILED"
fi

# JavaScript
echo -n -e "\tJavaScript...\t"
js=$(./rand.js $m $a $c $seed)

if [ $js -eq $result ]; then
  echo "PASSED"
else
  echo "FAILED"
fi

# C
echo -n -e "\tC...\t\t"
gcc -o ccode rand.c
c=$(./ccode $m $a $c $seed)
rm ccode

if [ $c -eq $result ]; then
  echo "PASSED"
else
  echo "FAILED"
fi


echo ""
