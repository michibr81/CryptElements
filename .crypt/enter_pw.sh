#!/bin/bash
echo "Enter Password : "
read -s password1
echo "Enter Password again: "
read -s password2
if [ "$password1" = "$password2" ];then
	echo "Passwords match"
	exit 0
else
	echo "Passwords match NOT"
	exit -1
fi


