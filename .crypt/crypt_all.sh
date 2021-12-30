#!/bin/sh
echo "Enter Password : "
read -s password1
if [ "$password1" = "" ];then
	echo "FAIL: Password is empty. Stopping..."
	read
	exit -1
fi
echo "Enter Password again: "
read -s password2
if [ "$password1" = "$password2" ];then
	echo "Passwords match"
else
	echo "FAIL: Passwords match NOT. Stopping..."
	read
	exit -2
fi

input_config_file=.crypt/cryptfolders.conf
printf 'Crypting all folder-lines in %s' "$input_config_file"
while IFS= read -r line; do
  printf '%s\n' "$line"
  sh .crypt/crypt.sh $line $password1
done < $input_config_file
