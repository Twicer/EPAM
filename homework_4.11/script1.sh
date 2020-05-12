#!/bin/bash
du -a -h /usr/* | sort -rh | grep  "\<[1-9][1-9][2-9][0-9]M"
du -a -h /usr/* | sort -rh | grep "\<[1-9][2-9][0-9]M"
du -a -h /usr/* | sort -rh | grep "\<[2-9][0-9]M"
