#!/bin/bash

echo "Процессов пользователя:"
a=`whoami`; echo $a;
ps -aux | grep "^$a" | wc -l;
echo "Процессов пользователя root:"
ps -aux | grep "^root" | wc -l;
