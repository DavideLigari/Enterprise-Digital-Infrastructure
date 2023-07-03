#!/bin/bash
max=16
duration=30
for ((i = 1; i <= $max; i = i * 2)); do
    for ((j = 1; j <= $max; j = j * 2)); do
        h2load --duration=$duration -c $i --warm-up-time=$j --log-file=Regionelombardia/timing.Regionelombardia-$i-$j.csv https://www.regione.lombardia.it/wps/portal/istituzionale/ >>Regionelombardia/output.Regionelombardia-$i.txt
    done
done
