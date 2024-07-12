#!/bin/bash


writefile=$1

writestr=$2

if [ $# -ne 2 ]; then
    echo "Usage: $0 <file location> <text>"
        exit 1
fi

echo $writefile
if [ -f $writefile ]; then
	echo "File Exist Already"
else
	dir_path=$(dirname "$writefile")
	if [ ! -d "$dir_path" ];then
		echo "Creating directory"
		mkdir -p "$dir_path"
		echo "Directory '$dir_path' created!"
	fi
	touch "$writefile"
	echo "File has been created!!"
fi

echo "Writing Text"
echo "$writestr" > "$writefile"

