# magmalabs

**Project description**

The Game of Life, also known simply as Life, is a cellular automaton devised by the British mathematician John Horton Conway in 1970. The “game” is a zero-player game, meaning that its evolution is determined by its initial state, requiring no further input. One interacts with the Game of Life by creating an initial configuration and observing how it evolves.

**Functional Requirements**

The universe of the Game of Life is an infinite two-dimensional orthogonal grid of square cells, each of which is in one of two possible states, alive or dead.

Every cell interacts with its eight neighbors, which are the cells that are directly horizontally, vertically, or diagonally adjacent. 

At each step in time, the following transitions occur:

   * Any living cell with fewer than two live neighbours dies, as if caused by underpopulation.
   * Any living cell with more than three live neighbours dies, as if by overcrowding.
   * Any living cell with two or three live neighbours lives on to the next generation.
   * Any dead cell with exactly three live neighbours becomes a live cell.
   
The initial pattern constitutes the seed of the system.

The first generation is created by applying the above rules simultaneously to every cell in the seed: births and deaths happen simultaneously, and the discrete moment at which this happens is sometimes called a tick (in other words, each generation is a pure function of the one before).

The rules continue to be applied repeatedly to create further generations.

The game should be run in command line and print the data to standard output.

***How use it? 

Download the project files and run the file named magmalabs_test.rb

   ruby magmalabs_test.rb
   
This will run the matrix that is already hard coded, to test some other test case it will be necessary to update the input

The file spec_magmalab.rb contains a set of 20 unit tests, each of them test all the scenarios 
