Particle p1;
Particle p2;
Particle p3;


void setup() {
  size(600,400);
  x = width/2;
  x = height/2;
  p2 = new Particle(500,200,100);
  p3 = new Particle(300,100,x);
}
float x;
void draw() {
  background(0);
  if(p2.overlaps(p1)) {
    x += 10;
    if (x == width) x= 0;
    delay(50);
    background(255,0,0);
  }
  
  p2.x = mouseX;
  p2.y = mouseY;
  
  p1.display();
