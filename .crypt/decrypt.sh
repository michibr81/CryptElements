#!/bin/bash
encrfilename=$1
password=$2
echo $DIR
if [ -f $encrfilename.zip.gpg ];
then
	gpg --passphrase $password --batch -d $encrfilename.zip.gpg > $encrfilename.zip
	unzip $encrfilename.zip
	if [ -d $encrfilename ];
	then
		rm $encrfilename.zip.gpg
		rm $encrfilename.zip
	fi
fi
