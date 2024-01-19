#!/bin/bash
./create_diamonds_tsv
head -n 10 ../data/diamonds.tsv > ../data/diamonds_short.tsv
