#!/bin/bash
encrfilename=$1
echo $DIR
read
if [ -f $encrfilename.zip.gpg ];
then
	gpg -d $encrfilename.zip.gpg > $encrfilename.zip
	unzip $encrfilename.zip
	if [ -d $encrfilename ];
	then
		rm $encrfilename.zip.gpg
		rm $encrfilename.zip
	fi
fi
