#!/bin/bash

rm *.log
cnt=0
while [[ $? -eq 0 ]]
do
	let cnt++
	./random_failure.sh >> stdout.log 2>> stderr.log
done
cat stdout.log stderr.log
echo "the program went wrong after running $cnt times"

