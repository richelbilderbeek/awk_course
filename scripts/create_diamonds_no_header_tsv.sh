#!/bin/bash
./create_diamonds_tsv.sh
tail -n +2 ../data/diamonds.tsv > ../data/diamonds_no_header.tsv
