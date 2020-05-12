#!/bin/bash
echo "какое слово найти?"
read a;
echo "в каком файле нужно найти $a?"
read b;
echo -e "сколько совпадений показать?"
read n; echo " "
cat $b | grep -n "$a" | head -n $n | sort -nk1

a=`whoami`
cd /home/$a
echo "переход в ограниченный режим"
set -r;

echo "какое слово найти?"
read a;
echo "в каком файле нужно найти $a?"
read b;
echo -e "сколько совпадений показать?"
read n; echo " "
cat $b | grep -n "$a" | head -n $n | sort -nk1