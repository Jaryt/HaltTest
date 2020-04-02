#!/bin/bash

while read line
do
  echo "$line"
  if echo $line | grep -q "test*"; 
  then
    echo "Found bad output! Halting step."
    circleci step halt
    kill $(<pid)
  fi
done