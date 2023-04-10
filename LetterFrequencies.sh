#!/bin/bash

cat ${1} | tr -d '[:punct:]' | tr '[:space:]' '\n' | tr '[:upper:]' '[:lower:]' | sed '/^$/d' | sort | uniq -c | sort -r $2 | awk -F ' ' '{print $2 " " $1}' | tr '\n' ' '
