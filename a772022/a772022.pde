import java.util.*;
ArrayList<Firework> fireworks;
final PVector GRAVITY = new PVector(0, 0.3);

void setup() {
  size(1100, 900);
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
    PVector pos = new PVector(x, y);
    fireworks.add(new Firework(type, pos));
  }
  if (frameCount == 1) {
    for (int i = 0; i < 10; i++) {             //vert line
      PVector pos = new PVector(135, i*10+200);
      fireworks.add(new Firework(-1, pos));
    }
    for (int i = 0; i < 4; i++) {
      PVector pos = new PVector(145+i*10, 250);  //hor bar
      fireworks.add(new Firework(-1, pos));
    }
    for (int i = 0; i < 10; i++) {
      PVector pos = new PVector(185, i*10+200);
      fireworks.add(new Firework(-1, pos));
    }


    for (int i = 0; i < 10; i++) {
      PVector pos = new PVector(255+i*5, i*10+200); // backslash
      fireworks.add(new Firework(-1, pos));
    }
    for (int i = 0; i < 10; i++) {
      PVector pos = new PVector(255-i*5, i*10+200); // forwardslash
      fireworks.add(new Firework(-1, pos));
    }
    for (int i = 0; i < 4; i++) {
      PVector pos = new PVector(240+i*10, 250);  //hor bar
      fireworks.add(new Firework(-1, pos));
    }


    for (int i = 0; i < 10; i++) {             //vert line
      PVector pos = new PVector(325, i*10+200);
      fireworks.add(new Firework(-1, pos));
    }
    for (int i = 0; i < 8; i++) {
      PVector pos = new PVector(25, 0);        //semi
      pos.rotate(i*PI/8 - HALF_PI);
      pos.add(325, 225);
      fireworks.add(new Firework(-1, pos));
    }


    for (int i = 0; i < 10; i++) {             //vert line
      PVector pos = new PVector(375, i*10+200);
      fireworks.add(new Firework(-1, pos));
    }
    for (int i = 0; i < 8; i++) {
      PVector pos = new PVector(25, 0);        //semi
      pos.rotate(i*PI/8 - HALF_PI);
      pos.add(375, 225);
      fireworks.add(new Firework(-1, pos));
    }


    for (int i = 0; i < 5; i++) {
      PVector pos = new PVector(415+i*5, i*10+200); // backslash half
      fireworks.add(new Firework(-1, pos));
    }
    for (int i = 0; i < 5; i++) {
      PVector pos = new PVector(465-i*5, i*10+200); // forwardslash half
      fireworks.add(new Firework(-1, pos));
    }
    for (int i = 0; i < 5; i++) {             //vert line half
      PVector pos = new PVector(440, i*10+250);
      fireworks.add(new Firework(-1, pos));
    }


    for (int i = 0; i < 10; i++) {             //vert line
      PVector pos = new PVector(585, i*10+200);
      fireworks.add(new Firework(-1, pos));
    }
    for (int i = 0; i < 8; i++) {
      PVector pos = new PVector(25, 0);        //semi
      pos.rotate(i*PI/8 - HALF_PI);
      pos.add(585, 225);
      fireworks.add(new Firework(-1, pos));
    }
    for (int i = 0; i < 8; i++) {
      PVector pos = new PVector(25, 0);        //semi
      pos.rotate(i*PI/8 - HALF_PI);
      pos.add(585, 275);
      fireworks.add(new Firework(-1, pos));
    }


    for (int i = 0; i < 4; i++) {
      PVector pos = new PVector(635+i*10, 250);  //hor bar
      fireworks.add(new Firework(-1, pos));
    }


    for (int i = 0; i < 10; i++) {             //vert line
      PVector pos = new PVector(695, i*10+200);
      fireworks.add(new Firework(-1, pos));
    }
    for (int i = 0; i < 8; i++) {
      PVector pos = new PVector(50, 0);        //semi big
      pos.rotate(i*PI/8 - HALF_PI);
      pos.add(695, 250);
      fireworks.add(new Firework(-1, pos));
    }


    for (int i = 0; i < 10; i++) {
      PVector pos = new PVector(815+i*5, i*10+200); // backslash
      fireworks.add(new Firework(-1, pos));
    }
    for (int i = 0; i < 10; i++) {
      PVector pos = new PVector(815-i*5, i*10+200); // forwardslash
      fireworks.add(new Firework(-1, pos));
    }
    for (int i = 0; i < 4; i++) {
      PVector pos = new PVector(800+i*10, 250);  //hor bar
      fireworks.add(new Firework(-1, pos));
    }


    for (int i = 0; i < 5; i++) {
      PVector pos = new PVector(875+i*5, i*10+200); // backslash half
      fireworks.add(new Firework(-1, pos));
    }
    for (int i = 0; i < 5; i++) {
      PVector pos = new PVector(925-i*5, i*10+200); // forwardslash half
      fireworks.add(new Firework(-1, pos));
    }
    for (int i = 0; i < 5; i++) {             //vert line half
      PVector pos = new PVector(900, i*10+250);
      fireworks.add(new Firework(-1, pos));
    }


    for (int i = 0; i < 7; i++) {             //vert line 7/10
      PVector pos = new PVector(965, i*10+200);
      fireworks.add(new Firework(-1, pos));
    }
    for (int i = 0; i < 2; i++) {
      PVector pos = new PVector(965, i*10+290);
      fireworks.add(new Firework(-1, pos));
    }
  }

  for (int i = fireworks.size()-1; i >= 0; i--) {
    fireworks.get(i).display();
  }
}
