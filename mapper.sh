#!/bin/bash

while read -a words
do
	for word in ${words[*]}
	do
		printf "%s\t1\n" $word
	done
done
