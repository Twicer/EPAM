#!/bin/bash

while true
do
a=`cut -f1 -d: /etc/passwd | wc -l`
b=0; 
 if [ "$a" -gt "$b" ]
 then 
 b=$a
 cut -f1,3 -d: /etc/passwd > tmp;
 sdiff -s userlogs tmp > userlogs;
 rm tmp;
 sleep 10;
 fi
 done