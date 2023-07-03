#!/bin/bash
max=50
exec <NameServers.csv
while IFS=";" read -r rec_column1 rec_column2; do
    for ((i = 0; i < $max; ++i)); do
        sudo dnstraceroute -e -t A -s $rec_column2 google.com >>dnstraceroute.$rec_column1.txt
    done
done
