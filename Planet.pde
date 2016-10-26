class Planet {
 
  float sizeof;
  PVector position;
  float incr = 0;
  
    Planet(float sizeof, PVector position)
    {
        this.sizeof = sizeof;
        this.position = position;
    }
    
    Planet()
    {
        this.sizeof = 50;
        this.position = new PVector(0,0);
    }
    
    void createPlanet()
    {
        rotateY(incr);
        sphere(sizeof);
        incr += 0.01;
    }
    
    void spawnMoon(float distance)
    {
        PVector moonPos = new PVector(0,0);
        Planet moon = new Planet(sizeof/2, moonPos);
        translate(distance,-50);
        rotateZ(radians(45));
        rotateY(incr);
        moon.createPlanet();
    }
    
  
}