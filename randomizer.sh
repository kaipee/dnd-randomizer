#! /bin/bash

mapfile -t items < items.txt

# Seed random generator
RANDOM=$$$(date +%s)

item=${items[$RANDOM % ${#items[@]} ]}

echo "$item"
