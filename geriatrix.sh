#!/bin/bash
if [ "$#" -ne 4 ]; then
	echo "Illegal number of parameters; Please provide size_in_bytes, <mount_point>, num_threads, utilization as the parameter"
	exit 1
fi
size=$1
mount=$2
threads=$3
util=$4
./build/geriatrix -n $size -u $util -r 42 -m $mount -a ./profiles/agrawal/age_distribution.txt -s ./profiles/agrawal/size_distribution.txt -d ./profiles/agrawal/dir_distribution.txt -x /tmp/age.out -y /tmp/size.out -z /tmp/dir.out -t $threads -i 50000 -f 0 -p 0 -c 0 -q 1 -w 2880 -b posix
