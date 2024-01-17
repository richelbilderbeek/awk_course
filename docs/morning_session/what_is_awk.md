# What is Awk

!!!- info "Learning objectives"

    * To be able to login to Rackham autonomously
    * To be able to load a Python version autonomously
    * To be able to run a minimal Python program autonomously

???- question "For teachers"

    Teaching goals are:

    - Learners have used the UPPMAX documentation
    - Learners have used the Python interpreter
    - Learners have loaded Python using the module system

    Other goals are:

    - Verify that learners indeed have learned how to login
    - Verify that learners indeed have learned how to use the module system

    Lesson plan:

    * 5 mins: prior knowledge
    * 5 mins: presentation
    * 15 mins: challenge
    * 5 mins: feedback

## Overview

```mermaid
flowchart TD

  can_use_script[Can use a script?]
  can_use_sed[Can use sed?]
  can_use_grep[Can use grep?]

  awk[Use Awk]
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

### Exercise 1: what is Awk?

!!!- info "Learning objectives"

    - to be able to login to Rackham autonomously

Of the 'To Awk Or Not', read:

- [Main page](https://pmitev.github.io/to-awk-or-not/)

Which of these statements is true?

- Awk is a programming language
- Awk is an interpreted programming language
- Awk is a compiled programming language
- Awk works on text files
- Awk works on images
- Awk works on `.docx` files


### Exercise 2: load the Python module

!!!- info "Learning objectives"

    - to be able to load a Python version autonomously

Load Python version 3.10.8. 
This is described at the UPPMAX pages on Python [here](http://docs.uppmax.uu.se/software/python/).

### Exercise 3: write a 'Hello world' program

!!!- info "Learning objectives"

    - to be able to run a minimal Python program autonomously

Start Python and write a 'Hello world' program.
This is described at the UPPMAX pages on Python programming [here](http://docs.uppmax.uu.se/software/python_programming/#use-the-python-interpreter)
