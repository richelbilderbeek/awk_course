# AWK course

This module introduces the fundamentals of the AWK language. 

!!! info "Content"

    This is the teaching material for the UPPMAX AWK course.

    This repository is based on the material of <https://pmitev.github.io/to-awk-or-not/>
    and puts it into teaching cycles.
    
## Schedule

Time          | Topic
--------------|-------------------------------
09:00-10:00   | [print](print.md), [filtering on values](filtering_on_values.md)
10:00-10:15   | Break
10:15-11:00   | [BEGIN and END](begin_and_end.md), [variables](variables.md)
11:00-11:15   | Break
11:15-12:00   | Associative arrays

To put in schedule:

 * Reading comma-seperated data
 * [Hello AWK](hello_awk.md)
 * [What is AWK](what_is_awk.md)
 * [AWK as a filter](awk_as_a_filter.md)
 * [Regular expressions](regexps.md)
 * [Basic Linux](basic_linux.md)
 * [When to use AWK](when_to_use_awk.md)
 * [Introduction](introduction.md)
 * [simple examples](simple_examples.md)

## Overview

```mermaid
flowchart TD

  subgraph tools[Tools]
    awk
    sed
    grep
  end
  subgraph basic_linux[Basic Linux]
    pipes
    echo
    printf
    stdin
    files[Files]
    input[Input]
    cat
    editor[Text editor]
  end
  subgraph terms[Terms]
    regex[Regular expressions]
    filter
  end

  %% Tools
  awk --> |can do| sed 
  sed --> |can do| grep
  %% grep --> |uses| regex

  %% Basic Linux
  stdin --> |need to know| pipes
  printf --> |need to know| echo
  pipes --> |need to know| printf
  files --> |need to know| cat
  files --> |need to know| editor
  files --> |a type of| input
  stdin --> |a type of| input
  awk --> |reads| input
 
  %% Terms
  %% awk --> |need to know| regex
  awk --> |is a| filter
  grep --> |is a| filter
  sed --> |is a| filter
  filter --> |uses| regex
```

## Links

 * [CLI text processing with GNU awk](https://learnbyexample.github.io/learn_gnuawk/): a book we use
 * [To awk or not](https://pmitev.github.io/to-awk-or-not): course material we use

