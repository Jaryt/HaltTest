#!/bin/bash

while read line
do
  if [ $line == "test2" ] 
  then
    echo "circleci step halt"
  fi
  echo "$line"
done