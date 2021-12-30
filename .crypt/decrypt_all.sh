#!/bin/bash
echo "Enter Password : "
read -s password1
if [ "$password1" = "" ];then
	echo "FAIL: Password is empty. Stopping..."
	read
	exit -1
fi

input_config_file=.crypt/cryptfolders.conf

printf 'Decrypting all folder-lines in %s' "$input_config_file"
while IFS= read -r line; do
  printf '%s\n' "$line"
  bash .crypt/decrypt.sh $line $password1
done < $input_config_file
