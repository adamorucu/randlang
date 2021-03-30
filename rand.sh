#!/usr/bin/bash

if [ $# -eq 4 ]; then
  echo $((($2 * $4 + $3) % $1))
else
  echo "Error: Not matching argument count."
fi
