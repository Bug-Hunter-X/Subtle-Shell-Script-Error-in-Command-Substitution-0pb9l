#!/bin/bash

# This script demonstrates the corrected approach

filename="my_file.txt"

# Correct way: use the exit status of the command 
if grep "error" "$filename" > /dev/null 2>&1; then
  echo "No errors found."
else
  echo "Errors found."
fi

# Alternative, capturing output when errors are present:

result=$(grep "error" "$filename" 2>&1)

if [ $? -eq 0 ]; then
  echo "No errors found."
else
  echo "Errors found: $result"
fi