#!/bin/bash

blastn -query $1 -subject $2 -task blastn-short -outfmt 6 -out $3

awk '$3 == 100.000 && $4 == $8' $3| wc -l