# AWK in a nutshell

!!!- info "Learning objectives"

    - run AWK without existing knowledge
    - see where AWK shines

???- question "For teachers"

    Teaching goals are:

    - .

    Lesson plan:

    * 5 mins: prior knowledge
    * 5 mins: presentation
    * 15 mins: challenge
    * 5 mins: feedback

## Overview

In this session, we run AWK.

## Exercises

See the exercise procedure [here](exercise_procedure.md).

### Exercise 1: printing

!!!- info "Learning objectives"

    - experience the many printing statements of `awk`

#### Download the data

In a terminal, do:

```
wget https://pmitev.github.io/to-awk-or-not/data/coins.txt
```

to download a file called `coins.txt`.

#### `print`

In a terminal, in the same folder as where the data is downloaded, do:

```
awk '{ print }' coins.txt
```

In English, this is: 'For every line, print the whole line'.

#### `print` and `$0`

In a terminal, in the same folder as where the data is downloaded, do:

```
awk '{ print $0 }' coins.txt
```

In English, this is: 'For every line, print the whole line'.

#### `$1`

In a terminal, in the same folder as where the data is downloaded, do:

```
awk '{ print $1 }' coins.txt
```

In English, this is: 'For every line, print the first column'.

#### Multiple columns

In a terminal, in the same folder as where the data is downloaded, do:

```
awk '{ print $1 $2 }' coins.txt
```

In English, this is: 'For every line, print the first column and second column'.

#### Multiple columns seperated by a space

In a terminal, in the same folder as where the data is downloaded, do:

```
awk '{ print $1, $2 }' coins.txt
```

In English, this is: 'For every line, print the first column and second column,
separated by a space'.

#### `NF`

In a terminal, in the same folder as where the data is downloaded, do:

```
awk '{ print NF }' coins.txt
```

In English, this is: 'For every line, print the number of columns'.

#### `$NF`

In a terminal, in the same folder as where the data is downloaded, do:

```
awk '{ print $NF }' coins.txt
```

In English, this is: 'For every line, print the last column'.

#### `NR`

In a terminal, in the same folder as where the data is downloaded, do:

```
awk '{ print NR }' coins.txt
```

In English, this is: 'For every line, print that line's number'.

#### Convert

The second column shows the weight in ounces.
One ounce is 28.349523125 gram.

In a terminal, in the same folder as where the data is downloaded, do:

```
awk '{ print $2 * 28.349523125 }' coins.txt

```

In English, this is: 'For every line, show the second column multiplied by 28.349523125'.

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

### Exercise 2: filtering by column values

!!!- info "Learning objectives"

    - experience the ways to filter on column values of `awk`

#### Download the data

In a terminal, do:

```
wget https://pmitev.github.io/to-awk-or-not/data/coins.txt
```

to download a file called `coins.txt`.

#### match on equality

In a terminal, in the same folder as where the data is downloaded, do:

```
awk '$1 == "gold" { print }' coins.txt
```

In English, this is: 'For every line where the first column matches `gold`, 
show the whole line'.

#### use less-then operator

In a terminal, in the same folder as where the data is downloaded, do:

```
awk '$2 < 1.0 { print }' coins.txt
```

In English, this is: 'For every line where the first column matches `gold`, 
show the whole line'

#### use `&&` operator

In a terminal, in the same folder as where the data is downloaded, do:

```
awk '$1 == "gold" && $2 < 1.0 { print }' coins.txt
```

In English, this is: 'For every line where the first column matches `gold`
**and** the value in the second column is less than 1.0, show the whole line'

#### use `||` operator

In a terminal, in the same folder as where the data is downloaded, do:

```
awk '$1 == "gold" || $2 < 1.0 { print }' coins.txt
```

In English, this is: 'For every line where the first column matches `gold`
**or** the value in the second column is less than 1.0, show the whole line'


#### multiple conditions

In a terminal, in the same folder as where the data is downloaded, do:

```
awk '$1 == "gold" { print "Gold:", $0 } $2 < 1.0  { print "Light:" $0 }' coins.txt
```

In English, this is: 'For every line where the first column matches `gold`,
print 'Gold:' and the line. 
For every line where the second column is less than 1.0,
print 'Light:' and the line. 

### Exercise 3: begin and end

!!!- info "Learning objectives"

    - experience the `BEGIN` and `END` blocks

#### Download the data

In a terminal, do:

```
wget https://pmitev.github.io/to-awk-or-not/data/coins.txt
```

to download a file called `coins.txt`.

#### `BEGIN`

In a terminal, in the same folder as where the data is downloaded, do:

```
awk 'BEGIN {print "There I go!" }' coins.txt
```

In English, this is: 'At the start, print 'There I go!''.

#### `BEGIN` and a print

In a terminal, in the same folder as where the data is downloaded, do:

```
awk 'BEGIN {print "Coin minting years:" } { print $3 }' coins.txt
```

In English, this is: 'At the start, print 'Coin minting years:',
then, for every line, print the third column.

#### `END`

In a terminal, in the same folder as where the data is downloaded, do:

```
awk 'END {print "Done!" }' coins.txt
```

In English, this is: 'In the end, print 'Done!''.

#### `END` and a `print`

In a terminal, in the same folder as where the data is downloaded, do:

```
awk '{ print $0 } END { print "Done!" }' coins.txt
```

In English, this is: 'For every line, print the line. In the end, print 'Done!''.

#### `BEGIN` and `END` and a `print`

In a terminal, in the same folder as where the data is downloaded, do:

```
awk 'BEGIN { print "Start!" } { print $0 } END { print "Done!" }' coins.txt
```

In English, this is: 'At the start, print 'Start!'. Then, for every line, print the line. In the end, print 'Done!''.

#### `BEGIN` and `END` and a condition and a `print`

In a terminal, in the same folder as where the data is downloaded, do:

```
awk 'BEGIN { print "Start!" } $1 == "gold" { print $0 } END { print "Done!" }' coins.txt
```

In English, this is: 'At the start, print 'Start!'. Then, for every line, 
if the first column matches `gold`, print the line. In the end, print 'Done!''.



### Exercise 4: variables

!!!- info "Learning objectives"

    - experience variables

#### Download the data

In a terminal, do:

```
wget https://pmitev.github.io/to-awk-or-not/data/coins.txt
```

to download a file called `coins.txt`.

#### Sum

In a terminal, in the same folder as where the data is downloaded, do:

```
awk '{ sum = sum + $2 } END { print sum }' coins.txt
```

In English, this is: 'For every line, add the value of the second column
to the variable called `sum`. In the end, print the value of sum.

#### Get the maximum

In a terminal, in the same folder as where the data is downloaded, do:

```
awk '$2 > max { max = $2 } END { print max }' coins.txt
```

In English, this is: 'For every line, if the value in the second column
is bigger than the value of `max`, set `max` to the value in the second column.
In the end, print the value of `max`.

!!! question "What is the assumption about the values in the second column?"

    The assumption about the values in the second column is that zero
    is the lowest possible value, as the initial value of `max` is zero.

    If, for example, all the values in the second column are negative,
    `max` will be zero.


## Links

 * Book: [CLI text processing with GNU awk](https://learnbyexample.github.io/learn_gnuawk/)
