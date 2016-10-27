class Planet {
 
  float sizeof;
  PVector moonCenter;
  PShape planet;
  PImage myimg;
  
    Planet(PShape planet)
    {
        this.planet = planet;
    }
    
    
    void show()
    {
        shape(planet);
    }
    
    void spawnMoon(float distance, PShape moon)
    {
        moonCenter = new PVector(1, 0, 1);
        moonCenter = moonCenter.mult(distance);
        translate(moonCenter.x, moonCenter.y*0, -moonCenter.z);
        shape(moon);
        
    }
    
  
}