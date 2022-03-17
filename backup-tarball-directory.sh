#!/bin/bash                                                                                        
#-----------------------------------------#
DATE=$(date '+%C%y-%m-%d-%k')
FILE=`echo "$1" | sed 's/\///g'`
tar czvf ~/.archive/${FILE}-${DATE}.tar $1
#-----------------------------------------#


