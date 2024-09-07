#!/bin/bash

file="/home/aditya-dey/ADITYA'S CODING & STUDY DIRECTORY/shellProgramming/student.dat"

for studentname in $(cat "$file")
do
    echo "student $studentname"
done
