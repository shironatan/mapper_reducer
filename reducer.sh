#!/bin/bash

current_key=""
total=0


while read data
do
	key=$(echo $data | awk '{print $1}')
	value=$(echo $data | awk '{print $2}')
	if [ "$current_key" != "" ] && [ "$current_key" != "$key" ]; then
		printf '%s\t%d\n' "$current_key" "$total"
		current_key=$key
		total=$value
	else
		current_key=$key
		total=$((total+value))
	fi
done
printf '%s\t%d\n' "$current_key" "$total"
