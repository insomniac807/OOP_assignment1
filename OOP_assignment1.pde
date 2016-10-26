void setup()
{
  size(500,500, P3D);
  position = new PVector(0,0);
}

PVector position;
Planet ourPlanet = new Planet(100, position);

void draw()
{
  background(0);
  pushMatrix();
  translate(width/2, height/2);
  ourPlanet.createPlanet();
  ourPlanet.spawnMoon(200);
  popMatrix();
}