#!/bin/bash
n=0;
while [ $n != "quit" ]
do read n
    if [ $n == "quit" ]
	then break;
    fi;
done;