#!/usr/bin/env bash
read -r -p 'Enter student name: ' name
read -r -p 'Enter marks (0-100): ' marks
if ! [[ "$marks" =~ ^[0-9]+$ ]] || (( marks > 100 )); then
  echo 'Invalid marks'; exit 1
fi
if (( marks >= 40 )); then result='Pass'; else result='Fail'; fi
printf 'Student: %s\nMarks: %s\nResult: %s\n' "$name" "$marks" "$result"
