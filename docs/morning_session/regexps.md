# Regular expressions

!!!- info "Learning objectives"

    - Practice regular expressions
    - Use two online websites to practice using regular expressions

???- question "For teachers"

    Teaching goals are:

    - The learners have practiced with some regular expressions
    - The learners have used some online websites to learn regular expressions

    Lesson plan:

    * 5 mins: prior knowledge
    * 5 mins: presentation
    * 15 mins: challenge
    * 5 mins: feedback

## Overview

Regular expressions are a used to find patterns in text.
It allows one to express concisely how a piece of text looks like.

For example:

- a common paper size is consists out of a capital A, B or C,
  followed by a number from 1 to and including 9, 
  for example `A4`
- [a Swedish personal identity number](https://en.wikipedia.org/wiki/Personal_identity_number_(Sweden)) ('personnummer')
  before 1980 *that is possibly valid* consists of 6 digits, a dash, and then 4 digits,
  for example `890201-3286`
- A blood group is A or B or AB or O, with a plus or minus added for the Rhesus factor, 
  for example `AB+`

Knowing regular expressions allows us to search for patterns in a text.

## Exercises

### Exercise 1: practice regular expressions

!!!- info "Learning objectives"

    - Practice the basics of regular expressions

Browse to <https://regexlearn.com> and do exercises 1 to and including 16.

### Exercise 2: practice regular expressions with `regex101.com`

!!!- info "Learning objectives"

    - Use a character class

A website like used in the previous exercise is useful for learning,
but this is an AWK course, hence we only look for a way to *work with* 
regular expressions.

- Browse to <https://regex101.com/> and find in the quick reference
  the character class for a single character 'a, b or c'
- Try out this website: copy the text from 'Three-letter words ending with 'at''
  as is shown below. Use a character class to select all animals


```title="Three-letter words ending with 'at'"
sat
eat
fat
pat
cat
hat
bat
rat
vat
mat
tat
oat
wat
lat
gat
kat
qat
```

> From <https://www.thefreedictionary.com/words-that-end-in-at>


### Exercise 3: practice regular expressions with `regextester.com`

!!!- info "Learning objectives"

    - Use a word anchor

Here is another website to practice with regular expressions:

- Browse to <https://www.regextester.com/>
  to find a so-called 'anchor' for the end of the string
- Try out this website: copy the text from 'Seven-letter words containing the word 'book''
  as is shown below. Use a word anchor to select all words ending with 'book'

```title="Seven-letter words containing the word 'book'"
booking
booklet
bookman
bookish
logbook
bookend
daybook
nonbook
lawbook
rebooks
prebook
bookful
bookies
bookers
bookmen
bookoos
```

> From <https://www.thefreedictionary.com/words-containing-book>
