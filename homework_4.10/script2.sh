#!/bin/bash
while true
    do
    a=`date && ps -A | wc -l`;
    echo -e "\n $a" >> logs;
    sleep 60
    done