#!/bin/bash 

nombre=$(echo $1 | tr '[:upper:]' '[:lower:]') 
pokemon= curl -s https://pokeapi.co/api/v2/pokemon/$nombre \
       	| jq -c -r '. | {id: .id, name: .name, weight: .weight,height: .height,order: .order}'
