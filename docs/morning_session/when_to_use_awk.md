# When to use AWK

!!!- info "Learning objectives"

    - Hear about the tools similar to `awk`

???- question "For teachers"

    Teaching goals are:

    - Show the tools similar to `awk`

    Lesson plan:

    * 5 mins: prior knowledge
    * 5 mins: presentation
    * ? mins: challenge
    * 5 mins: feedback

## Overview

In this session, we learn about the tools similar to `awk`.

## Exercises

### Exercise procedure

???- info "For teachers"

    > You will be put into Zoom Breakout rooms, in random pairs.
    > One should share his/her screen and do the exercises together on that computer.

    This assures everyone learns effectively: pairs are optimal.

    Check if every room has a screen that is shared!

    > There is no silent room.

    There is no silent room, as:
 
    - (1) working in pairs allows 'Think, Pair, Share' to work; answering is not personal anymore, 
    - (2) getting the experienced learners to teach makes them learn too,
    - (3) this does not work well with Zoom assigning random pairs, 
    - (4) this is not designed to be a self-study course

    > When done with the exercises, go back to the main room

    This helps set the pace of the course. 

    If two-thirds of the learners are back, call back all learners.

    > Breaks are always on the scheduled time. You will be reminded in that chat

    Breaks are important. 

    > Take that break, either in the main room or in your breakout room. The breakout rooms will not be closed

    Do not disrupt the flow (even more) by closing the breakout rooms.

    > In the main room, random learners will be asked questions
    > regarding those exercises.
    > Say the answer you agreed upon as a group (i.e. not your personal answer!)

    This is form is described as 'Think, Pair, Share' in 'The Fundamentals
    of Teaching' by Mike Bell

- You will be put into Zoom Breakout rooms, in random pairs.
- There is no silent room.
- One should share his/her screen and do the exercises together on that computer
- When done with the exercises, go back to the main room
- Breaks are always on the scheduled time. You will be reminded in that chat
- Take that break, either in the main room or in your breakout room. The breakout rooms will not be closed
- In the main room, random learners will be asked questions
  regarding those exercises.
  Say the answer you agreed upon as a group (i.e. not your personal answer!)


### Exercise 1: when to use AWK?

!!!- info "Learning objectives"

    - Hear about the tools similar to `awk`

Read ['To Awk Or Not'](https://pmitev.github.io/to-awk-or-not/):

- Main page, quote at the top

This graph puts the same quote into another perspective:

```mermaid
flowchart TD

  can_use_script[Can use a script?]
  can_use_sed[Can use sed?]
  can_use_grep[Can use grep?]

  awk[Use AWK]
  c[Use C]
  sed[Use sed]
  grep[Use grep]

  compiled_language[Compiled language]
  scripting_language[Scripting language]

  stream_editor[Stream editor]
  work_with_regular_expressions[Work with regular expressions]

  awk --> |is a| scripting_language
  c --> |is a| compiled_language
  sed --> |is a| stream_editor
  grep --> |allows to| work_with_regular_expressions

  can_use_script --> |no| c
  can_use_script --> |yes| can_use_sed
  can_use_sed --> |no| awk
  can_use_sed --> |yes| can_use_grep
  can_use_grep --> |no| sed
  can_use_grep --> |yes| grep
```

However, without knowing what these tools do, this wisdom is lost on us.

Here is an overview of tools similar to `awk`, what they are and where they shine:

Tool                                      |Description (as copied from their Wikipedia page)                                                                 |Shines when
------------------------------------------|------------------------------------------------------------------------------------------------------------------|----------------------------------
[AWK](https://en.wikipedia.org/wiki/AWK)  |a domain-specific language designed for text processing and typically used as a data extraction and reporting tool|working with tabular data
[sed](https://en.wikipedia.org/wiki/Sed)  |a Unix utility that parses and transforms text, using a simple, compact programming language                      |replace a regular expression
[grep](https://en.wikipedia.org/wiki/Grep)|a command-line utility for searching plain-text data sets for lines that match a regular expression               |searching for regular expressions

Does the wisdom make sense now?

## Similarities by example

Here we show the similarities of `awk`, `grep` and `sed`.

In this example, we use a file called [coins.txt](https://pmitev.github.io/to-awk-or-not/data/coins.txt):

```title="coins.txt"
gold     1    1986  USA                 American Eagle
gold     1    1908  Austria-Hungary     Franz Josef 100 Korona
silver  10    1981  USA                 ingot
gold     1    1984  Switzerland         ingot
gold     1    1979  RSA                 Krugerrand
gold     0.5  1981  RSA                 Krugerrand
gold     0.1  1986  PRC                 Panda - silver lined
silver   1    1986  USA                 Liberty dollar
gold     0.25 1986  USA                 Liberty 5-dollar piece
silver   0.5  1986  USA                 Liberty 50-cent piece
silver   1    1987  USA                 Constitution dollar
gold     0.25 1987  USA                 Constitution 5-dollar piece
gold     1    1988  Canada              Maple Leaf
```

The goal is to extract all lines that contain the word `silver`.

These statements, use the different tools, do exactly the same:

```
awk "/silver/" coins.txt
grep "silver" coins.txt
sed -n "/silver/p" coins.txt
```

`awk` starts to shine when the thing you want to do is more
complex then detecting lines with a text.