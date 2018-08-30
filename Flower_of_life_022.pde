// Flower of life
// Rupert Russell
// artwork on redbubble at: https://www.redbubble.com/people/rupertrussell/works/33564376-flower-of-life
// code on Github at: https://github.com/rupertrussell/flower_of_life_001
// Version 020
// 31 August 2018

// https://www.howtogeek.com/howto/windows/bring-misplaced-off-screen-windows-back-to-your-desktop-keyboard-trick/
// https://spiritualray.com/what-does-flower-of-life-symbolize

float cs = 230 ; // circle size  2300 used for Redbubble
float offset = cs/2;

void setup() {
  size(770, 770);  //  size(7700, 7700); used for Redbubble
  background(0);
  stroke(255);
  noFill();
  noLoop();
}


void draw() {
  translate(width/2, height /2 ); 

  ellipse(0, 0, cs, cs);
  strokeWeight(3);  //  strokeWeight(30);  used for Redbubble
  stroke(255);

  seed_of_life(0, 0);

  float  theta = radians(30);
  float x;
  float y;
  x = cs /2 * cos(theta);
  y = cs /2 * sin(theta); 
  seed_of_life(x, y);

  theta = radians(-30);
  x = cs /2 * cos(theta);
  y = cs /2 * sin(theta); 
  seed_of_life(x, y);

  theta = radians(90);
  x = cs /2 * cos(theta);
  y = cs /2 * sin(theta); 
  seed_of_life(x, y);

  theta = radians(150);
  x = cs /2 * cos(theta);
  y = cs /2 * sin(theta); 
  seed_of_life(x, y);

  theta = radians(150);
  x = cs /2 * cos(theta);
  y = cs /2 * sin(theta); 
  seed_of_life(x, y);

  theta = radians(210);
  x = cs /2 * cos(theta);
  y = cs /2 * sin(theta); 
  seed_of_life(x, y);

  theta = radians(270);
  x = cs /2 * cos(theta);
  y = cs /2 * sin(theta); 
  seed_of_life(x, y);


  // arcs
  theta = radians(270);
  x = cs /2 * cos(theta);
  y = cs /2 * sin(theta); 
  y = y - cs ;
  //  ellipse(x, y, cs, cs);
  arc(x, y, cs, cs, radians(30), radians(90+60));

  pushMatrix();

  for (int i = 0; i < 7; i++) {
    rotate(radians(60));
    theta = radians(270);
    x = cs /2 * cos(theta);
    y = cs /2 * sin(theta); 
    y = y - cs ;
    arc(x, y, cs, cs, radians(30), radians(90+60));
  }

  for (int i = 0; i <8; i++) {
    arc(cs*-0.4331, -cs*1.25, cs, cs, radians(-30), radians(90+60));
    rotate(radians(60));
  }

  for (int i = 0; i <8; i++) {
    point(cs*0.4331, -cs*1.25);
    // stroke(0,255,0);
    arc(cs*0.4331, -cs*1.25, cs, cs, radians(30), radians(90+60+60));
    rotate(radians(60));
  }
  popMatrix();
  pushMatrix();

  // 1st set of small arcs
  for (int i = 0; i < 7; i++) {
    x = cs * 0.4331;
    y = cs *1.749; 
    //  point(x, y);

    arc(x, y, cs, cs, radians(-90-60), radians(-60-30));
    x = x + cs * 0;
    y = y + cs * 0.5; 

    rotate(radians(60));
  }


  // 2nd set of small arcs
  for (int i = 0; i < 7; i++) {
    x = cs * 0.4331;
    y = cs *1.749; 
    arc(x, y, cs, cs, radians(-90-60), radians(-60-30));
    stroke(255);
    x = x + cs * 0;
    y = y + cs * 0.5; 
    rotate(radians(60));
  }


  popMatrix();
  pushMatrix();

  // 3rd set of small arcs
  rotate(radians(45));
  for (int i = 0; i < 7; i++) {

    x = cs * 0.445;
    y = cs *1.675; 
    arc(x, y, cs, cs, radians(-135), radians(-75));
    x = x + cs * 0;
    y = y + cs * 0.5; 
    rotate(radians(60));
  }


  // 4th set of small arcs
  rotate(radians(45));
  for (int i = 0; i < 7; i++) {
    x = cs * 0.5;
    y = cs *1.73; 
    //stroke(255, 0, 0);
    //ellipse(x, y, cs, cs);
    //stroke(255, 255, 0);
    arc(x, y, cs, cs, radians(-120), radians(-60));
    x = x + cs * 0;
    y = y + cs * 0.5; 
    rotate(radians(60));
  }

  popMatrix();
  // outer ellipeses
  ellipse(0, 0, cs * 3.0, cs * 3.0);
  ellipse(0, 0, cs * 3.1, cs * 3.1);

  save("flower_of_life_020.png");
  // exit();
}

void seed_of_life(float centX, float centY) {
  pushMatrix();
  translate(centX, centY ); 

  ellipse(0, 0, cs, cs);


  float theta = radians(-30);
  float x = cs /2 * cos(theta);
  float y = cs /2 * sin(theta); 
  ellipse(x, y, cs, cs);

  theta = radians(30);
  x = cs /2 * cos(theta);
  y = cs /2 * sin(theta); 
  ellipse(x, y, cs, cs);

  theta = radians(90);
  x = cs /2 * cos(theta);
  y = cs /2 * sin(theta); 
  ellipse(x, y, cs, cs);


  theta = radians(150);
  x = cs /2 * cos(theta);
  y = cs /2 * sin(theta); 
  ellipse(x, y, cs, cs);

  theta = radians(150);
  x = cs /2 * cos(theta);
  y = cs /2 * sin(theta); 
  ellipse(x, y, cs, cs);

  theta = radians(210);
  x = cs /2 * cos(theta);
  y = cs /2 * sin(theta); 
  ellipse(x, y, cs, cs);

  theta = radians(270);
  x = cs /2 * cos(theta);
  y = cs /2 * sin(theta); 
  ellipse(x, y, cs, cs);

  popMatrix();
}
