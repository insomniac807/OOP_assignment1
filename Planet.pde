class Planet {
 
  float sizeof;
  
    Planet(float sizeof)
    {
        this.sizeof = sizeof;
    }
    
    Planet()
    {
        this.sizeof = 50;
    }
    
    void createPlanet()
    {
        sphere(sizeof);
    }
    
    void spawnMoon(float distance, float incr)
    {
        Planet moon = new Planet(sizeof/2);
        translate(distance, sizeof, -800);
        moon.createPlanet();
    }
    
  
}