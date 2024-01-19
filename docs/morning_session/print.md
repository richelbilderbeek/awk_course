# print

!!!- info "Learning objectives"

    - print

???- question "For teachers"

    Teaching goals are:

    - .

    Lesson plan:

    * 5 mins: prior knowledge
    * 5 mins: presentation
    * 15 mins: challenge
    * 5 mins: feedback

## Overview

AWK is great for creating output.

In this session, we use AWK to create output.

## Exercises

See the exercise procedure [here](exercise_procedure.md).

### Exercise 1: confirming things are true

!!!- info "Learning objectives"

    - experience the many printing statements of `awk`

#### Download the data

In a terminal, do:

```
wget https://pmitev.github.io/to-awk-or-not/data/coins.txt
```

to download a file called `coins.txt`.

This file is a tab-separated file, with the following columns:

- 1: metal 
- 2: weight in ounces 
- 3: date minted 
- 4: country of origin 
- 5: description

#### `print`

In a terminal, in the same folder as where the data is downloaded, do:

```
awk '{ print }' coins.txt
```

In English, this is: 'For every line, print the whole line'.

Confirm that this is true.

#### `print` and `$0`

In a terminal, in the same folder as where the data is downloaded, do:

```
awk '{ print $0 }' coins.txt
```

In English, this is: 'For every line, print the whole line'.

Confirm that this is true.

#### `$1`

In a terminal, in the same folder as where the data is downloaded, do:

```
awk '{ print $1 }' coins.txt
```

In English, this is: 'For every line, print the first column'.

Confirm that this is true.

#### Multiple columns

In a terminal, in the same folder as where the data is downloaded, do:

```
awk '{ print $1 $2 }' coins.txt
```

In English, this is: 'For every line, print the first column and second column'.

Confirm that this is true.

#### Multiple columns seperated by a space

In a terminal, in the same folder as where the data is downloaded, do:

```
awk '{ print $1, $2 }' coins.txt
```

In English, this is: 'For every line, print the first column and second column,
separated by a space'.

Confirm that this is true.

#### `NF`

In a terminal, in the same folder as where the data is downloaded, do:

```
awk '{ print NF }' coins.txt
```

In English, this is: 'For every line, print the number of columns'.

Confirm that this is true.

#### `$NF`

In a terminal, in the same folder as where the data is downloaded, do:

```
awk '{ print $NF }' coins.txt
```

In English, this is: 'For every line, print the last column'.

Confirm that this is true.

#### `NR`

In a terminal, in the same folder as where the data is downloaded, do:

```
awk '{ print NR }' coins.txt
```

In English, this is: 'For every line, print that line's number'.

Confirm that this is true.

#### Convert

The second column shows the weight in ounces.
One ounce is 28.349523125 gram.

In a terminal, in the same folder as where the data is downloaded, do:

```
awk '{ print $2 * 28.349523125 }' coins.txt

```

In English, this is: 'For every line, show the second column multiplied by 28.349523125'.

Confirm that this is true.

#### Add text

The second column shows the weight in ounces.
One ounce is 28.349523125 gram.

In a terminal, in the same folder as where the data is downloaded, do:

```
awk '{ print $2 * 28.349523125, "gram" }' coins.txt
```

In English, this is: 'For every line, 
show the second column multiplied by 28.349523125 
and add the word 'gram' (separated by a whitespace)'.

Confirm that this is true.

### Exercise 2: printing

