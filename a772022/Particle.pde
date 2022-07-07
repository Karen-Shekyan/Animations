public class Particle {
  int type;
  PVector pos;
  PVector vel;
  int life;
  Firework parent;
  color col;
  float maxLife;

  public Particle(int type, PVector pos, PVector vel, int life, Firework parent, color col) {
    this.type = type;
    this.pos = pos;
    this.vel = vel;
    this.life = life;
    this.parent = parent;
    this.col = col;
    maxLife = life;
    //println(this.pos);
  }

  public void display() {
    if (life == 0) {
      parent.particles.remove(this);
    }
    switch (type) {
    case 0:
      //println(this.pos);
      noStroke();
      fill(col);
      ellipse(this.pos.x, this.pos.y, 7, 7);
      pos.add(vel);
      vel.add(GRAVITY);
      life--;
      break;

    case 1:
      if ((life / 10) % 2 == 0) {
        noStroke();
        fill(color(242.0/maxLife * (maxLife-life), 223.0/maxLife * (maxLife-life), 10.0/maxLife * (maxLife-life)));
        ellipse(this.pos.x, this.pos.y, 5, 5);
      }
      pos.add(vel);
      vel.add(PVector.mult(GRAVITY, 0.2));
      life--;
      break;
      
    case -1:
      fill(color(97*life/maxLife, 232*life/maxLife, 151*life/maxLife));
      ellipse(pos.x, pos.y, 5, 5);
      pos.add(vel);
      vel.add(PVector.mult(GRAVITY, 0.05));
      life--;
      break;
    }
  }
}
