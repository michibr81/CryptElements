#!/bin/bash
foldername=$1
password=$2
if [ -d $foldername ];
then
	zip -r $foldername.zip $foldername
	gpg --pinentry-mode loopback --passphrase $2 -o $foldername.zip.gpg --symmetric $foldername.zip 
	if [ -f $foldername.zip.gpg ];
	then
		rm $foldername.zip
		rm -r $foldername
	fi
fi
