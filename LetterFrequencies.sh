#!/bin/bash

# This Script counts the frequency of letters from an input sentence.

#Check if input is valid

cat ${1} | tr -d '[:punct:]' | tr '[:space:]' '\n' | tr '[:upper:]' '[:lower:]' | sed '/^$/d' | sort | uniq -c | sort -r $2 | awk -F ' ' '{print $2 " " $1}' | tr '\n' ' '
