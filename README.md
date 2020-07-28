This is a repository for a simple Tic Tac Toe mobile game. As I learn to develop with Xcode and Swift, this is one of the sample projects that I am trying on my own as I develop with other lessons. 

Goals:
1. Create a visually-correct game (adheres to formatting and can rotate the screen)
2. Make the game interactive for two people on one device
3. Allow a flip back and forth between players in terms of color/Xs and Os
4. Able to end the game if someone wins

Original design (7/23):


<img
src= "Screen Shot 2020-07-23 at 11.33.55 PM.png"
/>


The area inside the grid is composed of buttons, so when a user presses on the space, they are pressing the button. Alternating turns, the button will fill with either the yellow color and an "O" or the peach color and an "X". When either color gets three across, down, or diagonal, the title card changes to "Game Over". 

 
Created a "New Game" button that pops up once the game has been won (or there's been a draw) to reset and allow the user to play again. Also, I corrected a bug that allowed users to click a button that has already been pressed and change it's color/label.

To Do:
- Not allow the users to keep pressing the buttons after the game has been won 
