#!/usr/bin/env bash
read -r -p 'Enter a whole number: ' n
if ! [[ "$n" =~ ^-?[0-9]+$ ]]; then echo 'Invalid number'; exit 1; fi
for ((i=1;i<=10;i++)); do printf '%s x %s = %s\n' "$n" "$i" "$((n*i))"; done
