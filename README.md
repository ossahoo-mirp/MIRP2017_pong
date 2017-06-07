**

Build your own PONG!
---------
**Introduction**

Pong is one of the first electronic games created, based on the real-life game of table tennis. There are two players, each represented by a paddle on a rectangular screen. Each player controls their paddle by moving it up or down to hit the ball across the screen. If a player misses the ball with their paddle, the other player scores a point.

So the basic rules of the game are:

 1. There is a background that shows the game board
 2. There are two paddles on the left and right sides that move up and down
 3. There is a ball that moves across the screen and bounces off the paddles
 4. When a ball falls off the screen on the left or right sides (the player missed the ball), the other player scores a point.
 5. There is a score that represents the points each player scored.

You can play an online version of this game [here](http://www.ponggame.org) to get a better intuition for how the game works. In this lab, you will be building your own version of Pong!

We provide you an outline of code for you to start this lab, but you will be writing most of the code that creates this game! This code skeleton will provide you many constants that will make your life easier, so be sure to use these constants in your code! We also take care of key handling for you,  and you can read more about this in the *Key Handling* section below.

In addition to this README file, you will also find many instructions and hints in the code we give you! Be sure to **read the comments** carefully to determine what needs to be done inside each function!

**Set Up**
You will be completing this lab in **Processing** and start with the 5 skeleton files we provide you inside the `pong` folder. These files are:
> **FILES**
> - **pong.pde**: This is the main game file that you will be editing.
> - **constants.pde**: This file contains constants that will be useful to you! Make sure to read through this file before you begin, and you may need to 
> - **flow.pde**: This is a simple file that controls the flow of the game. You will update this code based on what should happen when a point is scored.
> - **key_handling.pde**: This file is for your convenience and does not need to be edited! It takes care of key handling.
> - **physics.pde**: In this file, you will write code that determines how the ball's position and velocity will be updated as well as the position of the paddle using the physics you learned in class!

Note that ".pde" at the end of the file indicates that the file should be opened using Processing.

**How to get these files:**
In order to download these files, you will `fork` this repository as you learned in class! Make sure you **DO NOT CLONE** this repository directly! Once you have forked the respoitory into your own Github account, you can then clone it onto your computer to work on the code. Make sure you are logged in to your own Github account while you do this!

<i class="icon-folder-open"></i> **pong.pde**
Just like any main Processing file, the functions that will be run are
 `void setup()` and `void draw()`. These functions, however, will mainly call other functions that you write

FUNCTION: `void setup()` is provided to you, which calls `resetGame()` to start a new game. **You** will write what happens inside `resetGame()` at the bottom of the file. Remember that `setup()` only gets called ONCE at the start of the program.

FUNCTION: `void draw()`is given to you, but simply calls `drawGameScreen()` which you will be writing. Remember that `draw()` gets called many times per second, and this is how the game screen will be refreshed each time something changes.
 
<i class="icon-folder-open"></i> **constants.pde**
This file consists of all sorts of useful variables that you will use throughout your code. Never use arbitrary values in your code; create a variable for it in this file if it doesn't already exist and then use that variable in your code. For example:

 - DO NOT write `size(500, 500)`
 - Instead, write: `size(displayWidth, displayHeight);` and define the variables `displayWidth` and `displayHeight` in the constants file.

Most constants in this file are self-explanatory based on the name of the variable and the comments throughout the file. If you still aren't sure what one of the variables is, ASK! Or look for where that variable is being used and make an educated guess. Here are some variables that may be confusing:

BALL_VELOCITY: This is the maximum speed of the ball in each direction. In this lab, this variable will be set to the value 20. Then `ballVx` will be either -20 or +20 and `ballVy` will be anything between -20 and +20. 

 - For example: ballVx = 20 and ballVy = 20 means the ball is going at a 45 degree angle (down-right). If ballVx = -20 and ballVy = 10, the ball will be going down-left.
 - Note the speed of the ball in the x-direction will always be the same, but will be changing in the y-direction.
 - Note you should never be using the value 20 directly; always use BALL_VELOCITY to represent this value.

**Step 1: Create a ball and its properties**
 The ball will be represented as a circle with the radius specified in the constants file. The ball also has a `position` and `velocity` throughout the game. These variables have been declared in the `constants` file with the appropriate names, but you need to set their values when you start a new game in the `resetGame()` function.
 
 Write the function `drawBall()` to display the ball in its current position with the current velocity using the variables in constants.pde.

**Step 2: Ball-Wall Collision Detection**
When the ball collides with any of the four walls or either of the paddles, some action must be taken:

 - If colliding with any of the four walls, then bounces off (DO NOW)
 - If colliding with left or right padde, then ball bounces off (DO LATER)

Later, we will modify this code so that the ball hitting the left or right walls will make the player score a point instead of the ball bouncing off, but for now, let the ball bounce from every side!

In the `updateBallVelocity()` function, write code to make the ball bounce from all four walls!
 
**Step 3: Draw the paddles**
Now try to write your code for the `drawPaddles()` function to display the left and right paddles (rectangles) in the correct positions.
To do this you will use the addle parameters defined among the constants: 
> paddleLength: the height of the paddle
> paddleWidth: the width of the paddle
> paddleColor: the color of the paddle
> leftPaddle: the Y-position of the left paddle
> rightPaddle: the Y-position of the right paddle
Note that you need to figure out what the X-positions of the paddles should be based on the given variables!

**Step 4: Move one paddle**
Fill out the `updatePaddlePositions()` function based on the keys that are pressed. See the key_handling.pde file or constants.pde file to figure out what the different variables do.

Note that the paddles only move in the vertical direction (update the y-position of the paddle).

**Step 5: Restrict paddle movement**
Currently, the paddle can be moved off the screen; that's not good! Let's fix that.
Modify your current code for `updatePaddlePositions()` to restrict motion of the paddles to make sure the paddles don't leave the screen. Once the paddle reaches the edge of the screen, it should not be able to move further in that direction.

**Step 6: Move both paddles!**
To make things actually exciting now, make both paddles move independently. Edit your code in `updatePaddlePositions()` to make both the paddles move based on which keys are pressed!

**Step 7: Ball-Paddle Collision Detection**
Again now you want to write your code to detect collision of the ball with the paddle. To do this you must write code that detects a large difference between the postion of the ball and the paddle as a miss, and a small difference as a collision. 

If the ball collides with the paddle, the ball should be reflected. (DO NOW)
If the paddle misses the ball, a player will score a point. (DO in Step 8).

**Step 8: Player scores a point**
We will modify the code from Step 2 so that the ball colliding with the left or right wall will NOT make it bounce anymore. Instead, if it collides with the left or right wall, the opposite player scores a point.

To do this write your code in the `rightLose()` and `leftLose()` functions in `flow.pde`. Think about what happens when a player scores a point. Make sure to update the player scores and the game screen.

**Step 9: Display scores**
Write your code for the `displayScores()` function to display player scores on the screen. Processing contains a function called text:
`text(textValue, xPos, yPos)`
that displays the `textValue` at the corresponding position. You may want to use this function to display the scores. 

**Step 10: Create a start screen**
Have a start screen that will be displayed when the program is first run. If the reset key is pressed or if either player scores a point, the game screen must return to this start screen as well.

**Step 11: Pausing the game**
If the game is paused, the ball and paddle properties should not be updated until the game is unpaused. Also indicate on the game screen that the game is paused. You may want to use `text()` function here again to display that the game is paused. You may also want to have a variable that keeps track of the game state (paused or playing) and update your other code until now accordingly!

**Key Handling**

You are given defined keyboard keys that the player will use in the game. They will do their assigned functions only when pressed.

 - In order to control the Left Paddle, the following keys can be used:

	LEFT_UP = 'q'                  LEFT_DOWN = 'a'

 - Controls for the Right Paddle
 
	RIGHT_UP = 'o'        RIGHT_DOWN = 'l'

 - Game Controls
 
	RESET = 'r'        PAUSE = 'p'           START = 's'