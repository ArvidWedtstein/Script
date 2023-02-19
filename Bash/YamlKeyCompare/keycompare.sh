#!/bin/bash

file1=./en-test.yaml
file2=./no-test.yaml
output_file=./diff.txt

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'


contents1=$(<"$file1")
contents2=$(<"$file2")



get_keys() {
  local content="$1"
  local prefix="$2"
  local key
  local value
  local output

  while read -r line; do
    if [[ $line =~ ^([a-zA-Z0-9_-]+): ]]; then
      key="${BASH_REMATCH[1]}"
      value="${line#$key: }"
      if [[ -z $value ]]; then
        # Add prefix if it exists
        if [[ -n $prefix ]]; then
          key="$prefix.$key"
        fi
        subkeys=$(get_keys "$content" "$key")
        output="$output $subkeys"
      else
        if [[ -n $prefix ]]; then
          key="$prefix.$key"
        fi
        output="$output $key"
      fi
    fi
  done <<< "$content"

  echo "$output"
}

keys1=$(get_keys "$contents1")
keys2=$(get_keys "$contents2")


for key in $keys1; do
  if grep -qwF "$key:" <<< "$contents2"; then
    value1=$(awk "/^$key: /{print; exit}" "$file1" | cut -d ' ' -f2-)
    value2=$(awk "/^$key: /{print; exit}" "$file2" | cut -d ' ' -f2-)
    if [[ "$value1" == "$value2" ]]; then
      echo -e "$key: ${GREEN}V${NC}" # same value
    else
      echo -e "$key: ${RED}X${NC}" # different value
    fi
  else
    echo -e "$key: ${RED}XX${NC}" # does not exist in second file
    echo "$key" >> "$output_file"
  fi
done

for key in $keys2; do
  if ! grep -qwF "$key:" <<< "$contents1"; then
    echo -e "$key: ${RED}XX${NC}" # does not exist in first file
    echo "$key" >> "$output_file"
  fi
done