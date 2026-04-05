#!/bin/bash

# This script will extract the all the tar.gz files in the current directory, and then delete the tar.gz files and from the extract files rremove features folder

tar_dir="./tars"

# change the directory
cd $tar_dir

# list files
# ls

for file in *.tar.gz
do
   dir_name="${file%.tar.gz}"
   mkdir -p "$dir_name"
   
   # Extract only .wav and .csv files from the root (ignore the features folder) into the respective directory
   tar -xvf $file --wildcards --no-anchored '*.wav' '*.csv' --exclude='*/features/*' -C "$dir_name"
   
   # Remove the tar.gz file
   rm $file
done
