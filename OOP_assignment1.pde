PVector sunCenter;
Planet ourPlanet;
Planet ourSun;
Planet ourMoon;
float moonDistance = 70;
float orbitSpeed = 0;
PImage mercury;
PImage the_moon;
PImage the_sun;
PShape planet;
PShape sun;
PShape moon;

void setup()
{
  size(1000,700, P3D);
  mercury = loadImage("planet2.png");
  the_moon = loadImage("moon.jpg");
  the_sun = loadImage("sun.jpg");
  noStroke();
  noFill();
  
  planet = createShape(SPHERE, 50);
  planet.setTexture(mercury);
  sun = createShape(SPHERE, 2000);
  sun.setTexture(the_sun);
  moon = createShape(SPHERE, 10);
  moon.setTexture(the_moon);
  
  ourPlanet = new Planet(planet);
  ourSun = new Planet(sun);
  ourMoon = new Planet(moon);
  sunCenter = new PVector(0, 400, -3000);
}

void draw()
{
  
  //translate(0,0,300);
  background(0);
  //pushMatrix();//basic HUD setup, move to class later
    //translate(0, 0, -300);
    //fill(100);
    //rect(0,0, 200, height);
    //rect(800,0, width, height);
    //rect(0,0, width, 100);
    //rect(0,0, 200, height);
   //popMatrix();
  
  //noStroke();
  
  pushMatrix();
    rotateY(radians(-orbitSpeed*100));
    spotLight(255, 255, 255, sunCenter.x*2, sunCenter.y, sunCenter.z*0.80, (float)width, (float)height, 500.0, TWO_PI, 0);
  popMatrix();
  
  pushMatrix();
    rotateY(radians(-orbitSpeed*100));
   // fill(255);
    translate(sunCenter.x*2, sunCenter.y, sunCenter.z*2);
    rotateY(radians(-orbitSpeed*10));
    ourSun.show();
   popMatrix();
  
  pushMatrix();
    translate(width/2, height/2, 100);
    
      pushMatrix();
       // fill(250,150,50);
        rotateX(radians(30));
        rotateY(orbitSpeed);
        ourPlanet.show();
      popMatrix();
      
    rotateY(radians(orbitSpeed*100));
    //fill(100);
    ourPlanet.spawnMoon(moonDistance*2, moon);
  popMatrix();
  
  orbitSpeed += 0.005;
  
}