#!/bin/bash

while read line
do
  if [ $line == "test2" ] 
  then
    # circleci step halt
    kill $(<pid)
  fi
  echo "$line"
done