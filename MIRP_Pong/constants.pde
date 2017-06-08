// Display Size
int displayWidth=600, displayHeight=600;

// Velocity Cnstants
float BALL_VELOCITY=2;
float PADDLE_VELOCITY = 10;  
int m,n;
// Background Color
int bgColor = 0;
//Restitution coeff

// Ball parameters
float ballX, ballY;
float ballVx, ballVy;
float ballRadius = 10;
int ballColor = 255;

// Y - position of Left and Right paddles
float leftPaddle = displayHeight/3 , rightPaddle= displayHeight/3;
// Paddle Dimensions
float paddleLength = 180,paddleWidth = 20;
 

int paddleColor = 255;

// Score Variables
int leftScore, rightScore;

// Controls for the Left Paddle
char LEFT_UP = 'q', LEFT_DOWN = 'a';

// Controls for the Right Paddle
char RIGHT_UP = 'o', RIGHT_DOWN = 'l';

// Game Controls
char RESET = 'r', PAUSE = 'p', START = 'o';

// Keyoard Handling Booleans
boolean left_up, right_up, left_down, right_down;
boolean reset, pause, start;