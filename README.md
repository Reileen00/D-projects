# Turing Machine in D 
Turing Machine Interpreter in D from online tutorials....

We implemented a Turing machine like-
## State Table for 3-State, 2-Symbol Busy Beaver

| Tape Symbol | Current State | Write Symbol | Move Tape | Next State |
|-------------|---------------|--------------|-----------|------------|
| 0           | A             | 1            | R         | B          |
| 0           | B             | 1            | L         | A          |
| 0           | C             | 1            | L         | B          |
| 1           | A             | 1            | L         | C          |
| 1           | B             | 1            | R         | B          |
| 1           | C             | 1            | R         | HALT       |

