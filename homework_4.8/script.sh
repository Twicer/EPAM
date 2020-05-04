#!/bin/bash
mkdir /home/d1; touch /home/d1/f1.txt;
mkdir /home/d2; touch /home/d2/f2.txt;
mkdir /home/d3; touch /home/d3/f3;

ls -laR /home 						> file_with_listing;
echo $USER | sed 's/.*/changed_name/'			> file_with_changed_name_sed;
echo $USER | awk '{print "changed name"}'		> file_with_changed_name_awk;
sed /total/d file_with_listing				> file_without_total;
awk '{print $6 " " $7 " " $8 " " $9}' file_with_listing	> file_with_date+name;
awk '{print $9}' file_with_listing | grep "[0-9]"	> file_with_0-9_in_name;
awk '{print $9}' file_with_listing | grep ".txt"	> file_with_extension;

rm -rf /home/d1;
rm -rf /home/d2;
rm -rf /home/d3;
