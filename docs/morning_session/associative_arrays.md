# Associative arrays

!!!- info "Learning objectives"

    - work with associative arrays

???- question "For teachers"

    Teaching goals are:

    - Learners work with associative arrays

    Lesson plan:

    * 5 mins: prior knowledge
    * 5 mins: presentation
    * 15 mins: challenge
    * 5 mins: feedback

## Overview

In this session, we work with associative arrays

## Exercises

See the exercise procedure [here](exercise_procedure.md).

### Exercise 1: confirming things are true

!!!- info "Learning objectives"

    - experience variables

#### Download the data

In a terminal, do:

```
wget https://raw.githubusercontent.com/richelbilderbeek/awk_course/master/data/diamonds_no_header.tsv
```

to download a file called `diamonds_no_header.tsv`.

#### Write to and read from an associative array

In a terminal, in the same folder as where the data is downloaded, do:

```
awk 'BEGIN { counts["ideal"] = 12345 } END { print counts["ideal"] }' diamonds_no_header.tsv
```

In English, this is: 'At the start, in the `counts` array, at element `ideal`, 
store the value `12345`. In the end, if the `counts` array, show the
value at element `ideal`.

Confirm that this is true.

#### Get a count

In a terminal, in the same folder as where the data is downloaded, do:

```
awk '{ counts[$2] = counts[$2] + 1 } END { print counts["ideal"] }' diamonds_no_header.tsv
```

In English, this is: 'For every line, in the `counts` array, 
at the element in the second column, increase the value by one.
In the end, if the `counts` array, show the
value at element `ideal`.

Confirm that this is true.

#### Get a count again

In a terminal, in the same folder as where the data is downloaded, do:

```
awk '{ counts[$2] += 1 } END { print counts["ideal"] }' diamonds_no_header.tsv
```

In English, this is: 'For every line, in the `counts` array, 
at the element in the second column, increase the value by one.
In the end, if the `counts` array, show the
value at element `ideal`.

Confirm that this is true.

#### Get a count again again

In a terminal, in the same folder as where the data is downloaded, do:

```
awk '{ counts[$2]++ } END { print counts["ideal"] }' diamonds_no_header.tsv
```

In English, this is: 'For every line, in the `counts` array, 
at the element in the second column, increase the value by one.
In the end, if the `counts` array, show the
value at element `ideal`.

Confirm that this is true.

#### Get a count again again again

In a terminal, in the same folder as where the data is downloaded, do:

```
awk '{ ++counts[$2] } END { print counts["ideal"] }' diamonds_no_header.tsv
```

In English, this is: 'For every line, in the `counts` array, 
at the element in the second column, increase the value by one.
In the end, if the `counts` array, show the
value at element `ideal`.

Confirm that this is true.

#### Show all elements

In a terminal, in the same folder as where the data is downloaded, do:

```
awk '{ counts[$2]++ } END { for (count in counts) print count }' diamonds_no_header.tsv
```

In English, this is: 'For every line, in the `counts` array, 
at the element in the second column, increase the value by one.
In the end, show all elements of the array `counts`.

Confirm that this is true.

#### Show all values

In a terminal, in the same folder as where the data is downloaded, do:

```
awk '{ counts[$2]++ } END { for (count in counts) print counts[count] }' diamonds_no_header.tsv
```

In English, this is: 'For every line, in the `counts` array, 
at the element in the second column, increase the value by one.
In the end, of all elements of the array `counts`, show their values.

Confirm that this is true.

#### Show all elements and values

In a terminal, in the same folder as where the data is downloaded, do:

```
awk '{ counts[$2]++ } END { for (count in counts) print count ": " counts[count] }' diamonds_no_header.tsv
```

In English, this is: 'For every line, in the `counts` array, 
at the element in the second column, increase the value by one.
In the end, show all elements of the array `counts` and their respective values.

Confirm that this is true.
