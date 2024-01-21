#!/bin/bash

rm -f diamonds.csv 

wget -q https://raw.githubusercontent.com/tidyverse/ggplot2/main/data-raw/diamonds.csv

cp diamonds.csv ../data/diamonds_raw.csv

sed -i 's/Very Good/very_good/g' diamonds.csv
sed -i 's/Good/good/g' diamonds.csv
sed -i 's/Fair/fair/g' diamonds.csv
sed -i 's/Premium/premium/g' diamonds.csv
sed -i 's/Ideal/ideal/g' diamonds.csv

tr -d '"' < diamonds.csv > diamonds_no_quotes.csv

cp diamonds_no_quotes.csv ../data/diamonds_no_quotes.csv

rm diamonds.csv

tr ',' '\t' < diamonds_no_quotes.csv > diamonds.tsv

rm diamonds_no_quotes.csv

mv diamonds.tsv ../data
