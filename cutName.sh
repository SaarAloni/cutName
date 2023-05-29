#!/bin/bash
search_dir=./
re_name=""
name=""
read name

for entry in $search_dir/*
do
	if ! [[ $entry == ".//cutName.sh" ]]; then
	if [[ $entry == *"$name"* ]]; then
		re_name=${entry/"$name"/}
		mv "$entry" "$re_name"
	fi
	fi
done