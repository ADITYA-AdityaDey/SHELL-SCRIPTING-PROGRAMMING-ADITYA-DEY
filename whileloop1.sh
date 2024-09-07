#!/bin/bash

count=1
number=20

while [ $count -le $number ]
do
	echo $count
	let count++
done
