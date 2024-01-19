# Exercise procedure

???- info "For teachers"

    > You will be put into Zoom Breakout rooms, in random pairs.

    This assures everyone learns effectively: pairs are optimal.

    > Ideally, all do the exercises on their computer, yet derive at a shared answer

    This assures everyone can give a answer that is not personal.

    > One should commonly share screens

    Encourage teaching and learning.

    > There is no silent room.

    There is no silent room, as:
 
    - (1) working in pairs allows 'Think, Pair, Share' to work; answering is not personal anymore, 
    - (2) getting the experienced learners to teach makes them learn too,
    - (3) this does not work well with Zoom assigning random pairs, 
    - (4) this is not designed to be a self-study course

    > When done with the exercises, go back to the main room

    This helps set the pace of the course. 

    > Learners that are done will be asked to try to help 
    > the remaining working learners,
    > by joining their breakout rooms

    This helps wisdom to spread. 

    The majority of learners is keen to help out
    directly. 

    The majority of the remaining learners feel not knowledgeable
    enough to help out, but is keen to *try to* help out. 
    Remind these learners they are here to learn, and not to already know
    to content.

    > When two-thirds of the learners are in the main room, all break-out rooms
    > will be closed ruthlessly

    The parameter value two-thirds is picked as it means that most learners
    have arrived at the answer. The hope is that the members of a slower 
    pair in one iteration will catch up when paired up with other learners.

    Closing breakout rooms is not ultra-ruthless: learners still have 1 minute
    left. But it is a simple and ruthless rule. 

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
- Ideally, all do the exercises on their own computer, yet derive at a shared answer
- One should commonly share screens
- When done with the exercises, go back to the main room
- Learners that are done will be asked to try to help the remaining working learners,
  by joining their breakout rooms
- When two-thirds of the learners are in the main room, all break-out rooms
  will be closed ruthlessly
- Breaks are always on the scheduled time. You will be reminded in that chat
- Take that break, either in the main room or in your breakout room. The breakout rooms will not be closed
- In the main room, random learners will be asked questions
  regarding those exercises.
  Say the answer you agreed upon as a group (i.e. not your personal answer!)

```mermaid
flowchart TD
  subgraph main_room[Main room]
    get_exercise[Get exercises]
    done_exercise[Done exercises]
    most_done_exercise[Most have done exercises]
    closing_breakout_rooms[Closing breakout rooms]
    feedback[Feedback]
  end
  subgraph breakout_room[Your initial breakout room]
    do_exercise[Do exercises in group]
  end
  subgraph other_breakout_room[Another breakout room]
    help_do_exercise[Help do exercises in group]
  end

  get_exercise --> |clear?| do_exercise
  do_exercise --> |done!| done_exercise
  do_exercise --> |breakout rooms close| feedback
  done_exercise --> |help out| help_do_exercise
  done_exercise --> |wait| most_done_exercise
  help_do_exercise --> |done!| done_exercise
  help_do_exercise --> |breakout rooms close| feedback
  most_done_exercise --> |many learners in main room| closing_breakout_rooms
  closing_breakout_rooms --> feedback
```

> Overview of the exercise procedure