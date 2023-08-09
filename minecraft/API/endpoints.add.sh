#!/bin/bash

ENDPOINTS_DOCUMENT="endpoints.md"

#FIELDS IN TABLE - MODIFY HERE IF WE CHANGE FIELDS
declare -a TABLE_FIELDS=(
    "PHYSICAL TARGET" 
    "ENDPOINT"
    "METHOD" 
    "REQUEST" 
    "RESPONSE"
    "WHAT DOES IT DO?"
    "DEPLOYED"
)

echo -e "\e[1;31m\e[47mDocument UNICUM Minecraft API Endpoint\e[0m"
echo

#INSERT NEW LINE TO ENDPOINTS
echo "" >> $ENDPOINTS_DOCUMENT

for FIELD in "${TABLE_FIELDS[@]}"; do 
    read -p "$FIELD: " ANS
    echo -e "\e[0;33m$ANS\e[0m is written to table"
    echo -n "| $ANS " >> $ENDPOINTS_DOCUMENT
done

#CLOSE TABLE
echo -n "|" >> $ENDPOINTS_DOCUMENT