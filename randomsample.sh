#!/bin/bash

percent=$1
fileinput=$2

#if the percent is greater than 100 or less than 0 exit
if [ $percent -gt 100 ]; then
            exit 1
fi
if [ $percent -lt 0 ]; then
             exit 1
fi

#if the number of arguments are wrong exit
if [ "$#" -ne 2 ]; then
          echo "Usage: $0 DIRECTORY" >&2
            exit 1
fi

while read p; do
          echo "$p"
  done < $fileinput
