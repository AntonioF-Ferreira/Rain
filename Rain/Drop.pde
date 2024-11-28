class Drop {
  float x = random(width);
  float y = random(-500,-100);
  float z = random(0, 20);
  float len = map(z, 0, 20, 10, 20);
  float yspeed = map(z, 0, 20, 5, 10);
  
  void fall() {
    y += yspeed;
    float grav = map(z, 0, 20, 0.01, 0.05);
    yspeed += grav;
    
    if (y > height) {
      y = random (-200, -100);
      yspeed = map(z, 0, 20, 4, 10);
    }
  }
  
  void show() {
   float thick = map(z, 0, 20, 0.5, 3);
   strokeWeight(thick);
   stroke(173, 216, 230);
    line(x,y, x, y + len);
    
  }
  
}
