#!/bin/bash

# This script attempts to process a file, but it has a subtle error
# related to how it handles command substitution and variable assignment.

filename="my_file.txt"

# The problematic line:  It assigns the *output* of the command to the variable,
# not the command itself. So if the command fails, the value of 'result' will be empty!
result=`grep "error" $filename`

if [ -z "$result" ]; then
  echo "No errors found."
else
  echo "Errors found: $result"
fi