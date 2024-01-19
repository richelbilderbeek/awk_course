#!/bin/bash
wget https://raw.githubusercontent.com/tidyverse/ggplot2/main/data-raw/diamonds.csv
tr ',' '\t' < diamonds.csv > diamonds.tsv

rm diamonds.csv

mv diamonds.tsv ../data
