void rightLose() 
{
    leftScore+=1; 
    displayScores();
    delay(100);
    ballX=displayWidth/2;
    ballY=0;
    ballVx=2*BALL_VELOCITY;
    ballVy=5;
}

void leftLose() 
{   
    rightScore+=1;
    displayScores();
    delay(100);
    ballX=displayWidth/2;
    ballY=0;
    ballVx=2*BALL_VELOCITY;
    ballVy=5;
  


if ((ball.rect()).intersects(paddle.rect())

    double ballWidth = m_ball.rect().getWidth();
    double ballCenterX = m_ball.rect().getX() + ballWidth/2;
    double paddleWidth = m_paddle.rect().getWidth();
    double paddleCenterX = m_paddle.rect().getX() + paddleWidth/2;
    double speedX = m_ball.speedX();
    double speedY = m_ball.speedY();

    // Applying the Pythagorean theorem, calculate the ball's overall
    // speed from its X and Y components.  This will always be a
    // positive value.
    double speedXY = Math.sqrt(speedX*speedX + speedY*speedY);

    // Calculate the position of the ball relative to the center of
    // the paddle, and express this as a number between -1 and +1.
    // (Note: collisions at the ends of the paddle may exceed this
    // range, but that is fine.)
    double posX = (ballCenterX - paddleCenterX) / (paddleWidth/2);

    // Define an empirical value (tweak as needed) for controlling
    // the amount of influence the ball's position against the paddle
    // has on the X speed.  This number must be between 0 and 1.
    final double influenceX = 0.75;{

    // Let the new X speed be proportional to the ball position on
    // the paddle.  Also make it relative to the original speed and
    // limit it by the influence factor defined above.
    speedX = speedXY * posX * influenceX;
    m_ball.setSpeedX(speedX);

    // Finally, based on the new X speed, calculate the new Y speed
    // such that the new overall speed is the same as the old.  This
    // is another application of the Pythagorean theorem.  The new
    // Y speed will always be nonzero as long as the X speed is less
    // than the original overall speed.
    speedY = Math.sqrt(speedXY*speedXY - speedX*speedX) *
             (speedY > 0? -1 : 1);
    m_ball.setSpeedY(speedY);
}

}