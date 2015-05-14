Car myCar, myCar2;
Carretera myCarretera;

void setup() {
  size(1024, 512);
  //myCarretera = new Carretera(color(255, 0, 0), 50, 125, 2); //Direcció 2, dreta.
  myCar = new Car(color(0, 225, 45), 200, 150, 3);
  myCar2 = new Car(color(255, 0, 0), 100, 150, 2);
}

void draw() {
  background(235,235,235);
  //myCarretera.display();
  myCar.drive(); 
  myCar.display();
  myCar2.drive(); 
  myCar2.display();
}

static class Car {
  color c;
  int xpos;
  int ypos;
  int xspeed;

  Car(color tempC, int tempXpos, int tempYpos, int tempXspeed) {    
    c = tempC;   
    xpos = tempXpos;   
    ypos = tempYpos;   
    xspeed = tempXspeed;
  }

  void display() {
    stroke(0);
    fill(c);
    //rectMode(CENTER);
    rect(xpos, ypos, 60, 40);
  }

  void drive() {
    xpos = xpos + xspeed;
    if (xpos > width) {
      xpos = 0;
    }
  }
}
/*
static class Carretera {

  color c;
  int xpos;
  int ypos;
  int direccioC;

  Carreta(color tempC, int tempXpos, int tempYpos, int direccio) {
    c = tempC;   
    xpos = tempXpos;   
    ypos = tempYpos;   
    direccioC = direccio;
  }

  void display() {
    stroke(0);
    fill(c);
    //rectMode(CENTER);
    rect(xpos, ypos, 860, 80);
  }
}*/


