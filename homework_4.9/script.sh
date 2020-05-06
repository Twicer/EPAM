#!/bin/bash
n=`ls  -lR /home | grep ^d | wc -l`;
dirname=`ls  -lR /home | grep ^d | awk '{print $9}'`;
echo -e "В моем домашнем каталоге $n поддиректорий:\n$dirname"

echo -e "\nВведите слово:"; read b;
c=`echo "$b" | wc -c`; let "c -= 1"
echo -e "В слове $b - $c букв";

echo -e "\nВВедите a"; read a;
echo -e "\nВВедите b"; read b;
echo -e "\nВВедите c"; read c;
d=`bc -l <<< "($a+$b)/$c"`; echo "$d"

echo -e "\nВВедите a"; read a;
echo -e "\nВВедите b"; read b;
if [ $a -gt $b ]
then
echo -e "\n$a>$b"
else
echo -e "\n$a<$b"
fi


echo -e "\nДата без форматирования:"; date;
echo -e "\nДата с форматированием:"; date | awk '{print $2 " " $1 " " $3 " " $4 " " $6}';

a=`pwd`;
b=`date`;
echo -e "\nЯ заходил в директорию $a в $b используя идентификатор $UID";



a=`${zxcasd?no \$zxcasd}`; echo -e "\n$a";

wget mail.ru;
lynx index.html;