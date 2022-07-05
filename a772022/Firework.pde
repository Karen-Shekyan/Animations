public class Firework {
  int type;
  PVector pos;
  ArrayList<Particle> particles;
  color col;

  public Firework (int type, PVector pos) {
    this.type = type;
    this.pos = pos;
    col = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));

    particles = new ArrayList<Particle>();
    if (type == 0) {
      int n = (int)(Math.random()*20+100);
      for (int i = 0; i < n; i++) {
        PVector offset = PVector.random2D();
        offset.mult((float)(Math.random()*50));
        PVector newpos = PVector.add(pos, offset);

        //offset.normalize();
        offset.mult(0.1);
        particles.add(new Particle(type, newpos, offset, (int)(Math.random()*15+10), this, col));
      }
    } else if (type == 1) {
      int n = (int)(Math.random()*20+80);
      for (int i = 0; i < n; i++) {
        PVector offset = PVector.random2D();
        offset.mult((float)(Math.random()*20));
        PVector newpos = PVector.add(pos, offset);

        //offset.normalize();
        offset.mult(0.07);
        particles.add(new Particle(type, newpos, offset, (int)(Math.random()*15+50), this, color(242, 223, 10)));
      }
    }
  }

  public void display() {
    for (int i = particles.size()-1; i >= 0; i--) {
      //println(particles.size());
      //println(i);
      particles.get(i).display();
    }
  }
}
