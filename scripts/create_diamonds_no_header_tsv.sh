#!/bin/bash
wget https://raw.githubusercontent.com/tidyverse/ggplot2/main/data-raw/diamonds.csv

tail -n +2 diamonds.csv > diamonds_no_header.csv

rm diamonds.csv

tr ',' '\t' < diamonds_no_header.csv > diamonds_no_header.tsv

rm diamonds_no_header.csv

mv diamonds_no_header.tsv ../data
