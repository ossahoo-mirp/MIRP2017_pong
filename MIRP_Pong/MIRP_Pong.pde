void setup() {
  size(displayWidth, displayHeight);
  resetGame();
  textFont(createFont("Arial Bold", 50));
}

void draw() {
  drawGameScreen();
 
}

void drawGameScreen() {
  // Draw background
  background(bgColor);
  // Update Ball Velocity and Resolve Collisions
  updateBallVelocity();
  // Update Ball and Paddle Positions
  updatePaddlePositions() ;
  // Draw Ball and Paddles
  drawBall();
  drawPaddles();
  displayScores();
  // Display Scores
}

void drawBalls() {
  // Display Ball in correct position
  fill(ballColor);
  ellipse(ballX, ballY, 2*ballRadius, 2*ballRadius);
  ballX+=ballVx;
  ballY+=ballVy;
}

void drawPaddle() {
  // Display Left and Right paddles in correct position
  fill(ballColor);
  rect(0,leftPaddle,paddleWidth,paddleLength);
  fill(ballColor);
  rect(displayWidth-paddleWidth,rightPaddle,paddleWidth,paddleLength);
  
 updateBallVelocity();
 updateBallPosition();
 updatePaddlePositions();
 drawBall();
 drawPaddles();
 displayScores();
 }

void drawBall() {
  fill(ballColor);
  ellipse(ballX, ballY, 2*ballRadius, 2*ballRadius);
  ballX+=ballVx;
  ballY+=ballVy;
}

void drawPaddles() {
  fill(paddleColor);
  rect(0, leftPaddle, paddleWidth, paddleLength);
  rect(displayWidth-paddleWidth, rightPaddle, paddleWidth, paddleLength);
}

void resetGame(){
  // Reset Ball and Paddle Positions
  // Reset Ball Velocity
}

void displayScores() {
  // Display Left and Right player Scores
  text(leftScore, displayWidth/4,50);
  text(rightScore, 3*displayWidth/4, 50);
}
 