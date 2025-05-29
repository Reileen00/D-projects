# Turing Machine in D 
Turing Machine Interpreter in D from online tutorials....

We implemented a Turing machine like-
## State Table for 3-State, 2-Symbol Busy Beaver

| Tape Symbol | Current State A           | Current State B           | Current State C           |
|-------------|---------------------------|---------------------------|---------------------------|
|             | Write | Move | Next State | Write | Move | Next State | Write | Move | Next State |
|-------------|-------|------|------------|-------|------|------------|-------|------|------------|
| 0           |   1   |  R   |     B      |   1   |  L   |     A      |   1   |  L   |     B      |
| 1           |   1   |  L   |     C      |   1   |  R   |     B      |   1   |  R   |    HALT    |
