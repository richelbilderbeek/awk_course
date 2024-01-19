# AWK course

This module introduces the fundamentals of the AWK language. 

!!! info "Content"

    This is the teaching material for the UPPMAX AWK course.

    This repository is based on the material of <https://pmitev.github.io/to-awk-or-not/>
    and puts it into teaching cycles.
    
## Schedule

Time          | Topic
--------------|-------------------------------
09:00-10:00   | .
10:00-10:15   | Break
10:15-11:00   | .
11:00-11:15   | Break
11:15-12:00   | .

To put in schedule:

 * [Hello AWK](hello_awk.md)
 * [What is AWK](what_is_awk.md), 
 * [When to use AWK](when_to_use_awk.md) 
 * [simple examples](simple_examples.md)

## Overview

```mermaid
flowchart TD

  subgraph basic_linux[Basic Linux]
    pipes
    echo
    printf
    stdin
  end

  awk

  stdin --> |need to know| pipes
  printf --> |need to know| echo
  pipes --> |need to know| printf
  awk --> |need to know| stdin
```

## Links

 * [Book 'CLI text processing with GNU awk'](https://learnbyexample.github.io/learn_gnuawk/)
