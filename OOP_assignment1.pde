void setup()
{
  size(1000,700, P3D);
  position = new PVector(0,0);
}

PVector position;
Planet ourPlanet = new Planet(50);
float moonDistance = 500;
float incr = 0;

void draw()
{
  background(0);
  noStroke();
  fill(250,150,50);
  
  pushMatrix();
    rotateY(-incr/20);
    spotLight(255.0, 200.0, 0.0, 0.0, -400.0, 1000.0, (float)width, (float)height, 500.0, PI, 0);
  popMatrix();
  
  pushMatrix();
    translate(width/2, height/2, 100);
    
      pushMatrix();
        rotateX(radians(30));
        //rotateY(incr);
        ourPlanet.createPlanet();
      popMatrix();
      
    rotateY(incr/500);
    ourPlanet.spawnMoon(moonDistance, incr);
  popMatrix();
  
  incr += 0.005;
  
}