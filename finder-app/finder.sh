#!/bin/bash



filesdir=$1

searchstr=$2

if [ $# -eq 2 ]; then
	echo $filesdir
	if [ -d "$filesdir" ]; then
		filenumb=$(find $filesdir -type f | wc -l)
		stringcounted=$(grep -r -c "$searchstr" "$filesdir" | awk -F: '{sum += $2} END {print sum}' )
		echo "The number of files are $filenumb and the number of matching lines are $stringcounted"
		exit 0	
	else
		echo "ERROR: Missing Directory -> Directory $filesdir does not exist!!"
		exit 1
	fi
else
	echo "ERROR: Missing arguments syntax should look like this -> ./finder.sh [File Directory] [String to be found] "
	exit 1
fi
