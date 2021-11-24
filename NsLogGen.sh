#!/bin/bash

level="level_all"
pref="prefix_time"
output=""
while IFS= read -r line; do
  if [[ "${line:0:1}" =~ [#] ]]
  then
    :
  else
    output+="${line}=${level}|${pref}:"
  fi
done < classnames
output="${output::-1}"
echo NS_LOG=\""$output"\"

