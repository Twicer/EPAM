#!/bin/bash
for a in $1 $2 $3 $4 $5 $6
do
let b="$a**2";
echo "Квадрат $a равен $b"
done