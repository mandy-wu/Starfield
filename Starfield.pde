aBunch [] particles = new aBunch[100];
/*interface aBunch
  {
    public void show();
    public void move();
  }
*/  
void setup()
{
  size (500, 500);
  //particles = new Particle [50];
  for (int i = 0; i<particles.length; i++)
  {
    particles[i] = new NormalParticle();
    //particles[99] = new OddallParticle();
  }
}

void draw()
{
  background(0);
  for (int i = 0; i<particles.length; i++)
  {
    particles[i].move();
    particles[i].show();
  }
}

class NormalParticle 
{
  double myX, myY, Speed, Angle;
  int Color;
  NormalParticle ()
  {
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
    Speed = Math.random()*10;
    Angle = Math.PI*2*Math.random();
  }
  void move()
  {
    myX = myX + Math.random()*500;
    myY = myY + Math.random()*500;
  }
  void show()
  {
    
  }
}
/*class OddballParticle implements aBunch
  {
    public void show()
    //
    public void move(50,50)
    //
  }

class JumboParticle extends NormalParticle
{
    void show ()
    {
      //
    }
}
*/