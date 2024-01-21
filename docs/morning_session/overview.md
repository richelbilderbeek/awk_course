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
11:15-12:00   | [Associative arrays](associative_arrays.md), [working with comma-separated values](working_with_csvs.md)

## Overview

```mermaid
flowchart TD

  awk[[AWK]]

  subgraph awk_facets[AWK facets]
    print[Print]
    filtering_on_values[Filtering on values]
    begin_and_end[BEGIN and END]
    variables[Variables]
    associative_arrays[Associative arrays]
    filtering_on_regex[Filtering on regular expressions]
    comma_as_separator[Comma as a separator]
  end

  %% Facets of AWK
  filtering_on_values --> |needs| print
  comma_as_separator --> |needs| print
  begin_and_end --> |needs| filtering_on_values
  variables --> |needs| begin_and_end
  associative_arrays --> |needs| variables
  filtering_on_regex --> |needs| filtering_on_values
```

## Links

 * [CLI text processing with GNU awk](https://learnbyexample.github.io/learn_gnuawk/): a book we use
 * [To awk or not](https://pmitev.github.io/to-awk-or-not): course material we use

