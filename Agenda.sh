#!/bin/bash
result=""
for n in $(sed -n -e "/Today/,+1p" -e "/Tomorrow/,+2p" ${1});
do
	if [[ "${n}" == 'Today' || "${n}" == 'Tomorrow' ]]
        then
        	result+="\n${n}: "
        else
         	result+="${n} "
        fi
done
echo -e ${result} | column -t -s : | sort
