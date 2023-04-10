#!/bin/bash

algorithm=('sha256sum' 'sha1sum' 'sha384sum' 'sha512sum' 'sha224sum')
selectedAlgo=${algorithm[ $RANDOM % ${#algorithm[@]} ]}

echo "Encrypted Password: $(echo "${1}" | ${selectedAlgo})"

if [[ $2 ]]
then
case $2 in
	--algo)
		echo "Algorithm used: $selectedAlgo"
		;;
	--text)
		echo "Password text is: $1"
		;;
	--length)
		echo "Password length is: ${#1}"
		;;
	*)
		echo "Invalid option"
		;;
esac
fi
