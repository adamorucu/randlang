#!/usr/bin/bash
m=5
a=3
c=6
seed=2
result=2

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
cc=$(./ccode $m $a $c $seed)
rm ccode

if [ $cc -eq $result ]; then
  echo "PASSED"
else
  echo "FAILED"
fi

# Java
echo -n -e "\tJava...\t\t"
javac rand.java
java=$(java rand $m $a $c $seed)
rm rand.class

if [ $java -eq $result ]; then
  echo "PASSED"
else
  echo "FAILED"
fi

# R
echo -n -e "\tR...\t\t"
r=$(./rand.R $m $a $c $seed)

if [ $r -eq $result ]; then
  echo "PASSED"
else
  echo "FAILED"
fi

# Scala
echo -n -e "\tScala...\t"
scala=$(./rand.scala $m $a $c $seed)

if [ $scala -eq $result ]; then
  echo "PASSED"
else
  echo "FAILED"
fi

# Octave
echo -n -e "\tOctave...\t"
octave=$( octave --silent --eval "rand($m, $a, $c, $seed)" | awk '{print $3}' )

if [ $octave -eq $result ]; then
  echo "PASSED"
else
  echo "FAILED"
fi

# Perl
echo -n -e "\tPerl...\t\t"
perl=$(./rand.pl $m $a $c $seed)

if [ $perl -eq $result ]; then
  echo "PASSED"
else
  echo "FAILED"
fi

# C++
echo -n -e "\tC++...\t\t"
g++ -o cppcode.exe rand.cpp
c=$(./cppcode.exe $m $a $c $seed)
rm cppcode.exe

if [ $c -eq $result ]; then
  echo "PASSED"
else
  echo "FAILED"
fi

echo ""
