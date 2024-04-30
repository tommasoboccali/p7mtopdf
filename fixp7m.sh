#!/bin/bash
find . -name \*.p7m  | while read LINE; do 
    
    OLD=$LINE 
    NEW=$(echo $OLD|sed s#\.p7m##g)
    echo Converting  \"$OLD\" to \"$NEW\"
    openssl smime -verify -noverify -in "$OLD" -inform DER -out "$NEW"

done

