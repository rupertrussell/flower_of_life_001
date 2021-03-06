float cs = 2300 ; // circle size
float offset = cs/2;

void setup() {
  size(7700, 7700);
  background(0);
  stroke(255);
  noFill();
  noLoop();
}

void draw() {
  translate(width/2, height /2 ); 

  ellipse(0, 0, cs, cs);
  strokeWeight(30);
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

  popMatrix();

  for (int i = 0; i <8; i++) {
    arc(cs*-0.4331, -cs*1.25, cs, cs, radians(-30), radians(90+60));
    rotate(radians(60));
  }

  for (int i = 0; i <8; i++) {
    point(cs*0.4331, -cs*1.25);
    arc(cs*0.4331, -cs*1.25, cs, cs, radians(30), radians(90+60+60));
    rotate(radians(60));
  }

  // outer ellipeses
  stroke(255);
  ellipse(0, 0, cs * 3, cs * 3);

  ellipse(0, 0, cs * 3.07, cs * 3.07);

  save("flower_of_life.png");
  exit();
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
