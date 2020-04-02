#!/bin/bash

while read line
do
  if [ $line == "test2" ] 
  then
    echo "Found bad output! Halting step."
    circleci step halt
    kill $(<pid)
  fi
  echo "$line"
done