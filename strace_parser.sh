#!/bin/bash
printf "\n"
echo "####################################################################################"
echo "Strace Parser: Find top 15 time consuming activity in stracefile"
echo "Usage : ./strace_parser strace_file	"
echo "Columns:  Time (In Seconds), LineNo, Full Activity							  "
echo "####################################################################################"
printf "\n"
printf "%s\t\t"	 "Time(S)" LNo Full_Activity   
printf "\n"
awk '{print $NF,"\t" NR,"\t\t" $0}'  <$1 | sed -e 's/<//; s/>//' |sort -nr |head -15