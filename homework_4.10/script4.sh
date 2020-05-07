#!/bin/bash
function math {
let x="(a+b)/c";
}
echo -e "a равно:" && read a;
echo -e "b равно:" && read b;
echo -e "c равно:" && read c;
math; echo -e "\nx равно $x"