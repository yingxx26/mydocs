#!/bin/bash

params=$@
i=4
for (( i=4 ; i <= 9 ; i = $i + 1 )) ; do
    echo ============= storage$i $params =============
    ssh storage$i "$params"
done
