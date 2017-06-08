void updateBallVelocity() {
  // Detect Ball collisions with walls or paddles
  //top
  if(ballY<ballRadius)
  {ballVy*=-1;
  ballY=ballRadius;}
  //bottom
  if(ballY>displayHeight-ballRadius){
    ballVy*=-1;
    ballY=displayHeight-ballRadius;}
    // If collides with left wall, right player gains one point
  if(ballX<=ballRadius)
  leftLose();
 // If collides with right wall, left player gains one point
 if(ballX>=displayWidth-ballRadius)
 rightLose();
    //left paddle
   if(ballX<=ballRadius+paddleWidth)
  {
    if((ballY<=leftPaddle+paddleLength)&&(ballY>=leftPaddle))
    {ballVx*=-1;
    ballX=ballRadius+paddleWidth;}
  }
  //right paddle
  if(ballX>=(displayWidth-ballRadius)-paddleWidth)
  {
    if((ballY<=rightPaddle+paddleLength)&&(ballY>=rightPaddle))
    {ballVx*=-1;
    ballX=displayWidth-ballRadius-paddleWidth;}
  }
  // If collide with paddle, or top/bottom wall, then bounce off

}

void updateBallPosition() {
  ballX += ballVx;
  ballY += ballVy;
}

void updatePaddlePositions() {
  // Based on the keys pressedd, move the paddles (update Y position)
  if(leftPaddle>0)
  {if(left_up)
  leftPaddle-=PADDLE_VELOCITY;}
  
  if(leftPaddle<displayHeight-paddleLength){
  if(left_down)
  leftPaddle+=PADDLE_VELOCITY;}
  
   if(rightPaddle>0){
  if(right_up)
  rightPaddle-=PADDLE_VELOCITY;}
  
  if(rightPaddle<displayHeight-paddleLength){
  if(right_down)
  rightPaddle+=PADDLE_VELOCITY;}
  // Make sure the paddles don't leave the screen
}