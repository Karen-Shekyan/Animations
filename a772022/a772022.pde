import java.util.*;
ArrayList<Firework> fireworks;
final PVector GRAVITY = new PVector(0, 0.3);

void setup() {
  size(1100,900);
  background(3, 7, 84);
  
  fireworks = new ArrayList<Firework>();
}

void draw() {
  background(3, 7, 84);
  if (frameCount % 10 == 0) {
  //if (frameCount == 10) {
    float x = (int)(Math.random()*1100);
    float y = (int)(Math.random()*900);
    
    int type = (int)(Math.random()*2);           ///increase types here
    //int type = 1;
    PVector pos = new PVector(x,y);
    fireworks.add(new Firework(type,pos));
  }
  
  for (int i = fireworks.size()-1; i >= 0; i--) {
    fireworks.get(i).display();
  }
}
