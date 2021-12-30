#!/bin/bash
input_config_file=.crypt/cryptfolders.conf
printf 'Decrypting all folder-lines in %s' "$input_config_file"
while IFS= read -r line; do
  printf '%s\n' "$line"
  bash .crypt/decrypt.sh $line
done < $input_config_file
