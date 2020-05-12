#!/bin/bash

echo "Домашний каталог пользователя";
a=`whoami`;
echo $a;
echo "содержит обычных файлов:"
a=`ls -l /home/ec2-user/ | grep "^-" | wc -l`;
echo $a
#find /home/$a/ -type f| wc -l;
echo "скрытых файлов:"
b=`ls -la /home/ec2-user/ | grep "^-" | wc -l`;
let "c=b-a";
echo $c