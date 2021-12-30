# CryptElements

These skripts were generated to enable easy folder-encryption on an Linux filesystem.

By configuring the folders to use and running the encryption-script the user is prompted a password which will be used for symmetric gpg-encrpytion of the folders. Afterwards the readable-folders are gone and replaced by <foldername>.zip.gpg files. 

These encrypted files can be made readable by running the decryption-script which will prompt for the given password.
  
> There is no in-build way to restore the data without the given password as there **is** the possibility to destroy your data when something is configured wrong. So be sure what you are doing, read the configuration chapter and test your setup well!
  

## Dependencies and Environment

The skripts were tested under Ubuntu 20.04 but as the underlying commands are low-level they should run on other distributions as well.
  
It may be necessary to replace `gnome-terminal` and `bash` (in the files starting with 0000_) with the corresponding commands of your distribution.

**Used Commands**
- unzip
- zip
- gpg (2.2)
- gnome-terminal
- bash

## Configuration

+ Clone or download the repo to some location on your computer
+ Copy
  ```
  0000_run_crypt_all.sh
  0000_run_decrypt_all.sh
  /test5
  /.crypt
  ```
  to the root of the directory where your folders-to-secure were located.
+ Run `0000_run_crypt_all.sh` type in some password and check if folder `test5` is converted to an file `test5.zip.gpg`.  
+ Run `0000_run_decrypt_all.sh` and, after being propmted the password, given the step before., see if the folder `test5` is created again, containing the testfile.
5 Just for cleaning up you now can delete folder `test5`.
6 Edit file 
  ```
   .crpyt/cryptfolders.conf
  ```
  by removing the line test5 and instead fill in your folders to secure line by line.
  
