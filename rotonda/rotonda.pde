//Primera llei, el cotxe dret té preferència. El que ve d'amunt es para sempre i comprova que no hi hagi cap cotxe a punt.
//Segona llei, els cotxes suden de tot i només es paren si estàn MOOOOOLT aprop de xocar.

Car myCar, myCar2;
Carretera myCarretera;

void setup() {
  size(1024, 512);
  myCarretera = new Carretera(color(145, 145, 145), 0, (height/2)-40, 2); //Direcció 2, dreta.
  myCarretera2 = new Carretera(color(145, 145, 145), (width/2)-40, 0, 3); //Direcció 3, Aball.
  myCar = new Car(color(0, 225, 45), 0, (height/2)-20, 5, 2); //El verd.
  myCar2 = new Car(color(255, 0, 0), (width/2)-20, 0, 2, 3); //El vermell.

  boolean ojo = false;
}

void draw() {
  background(235, 235, 235);
  myCarretera.display();
  myCarretera2.display();
  myCar.display();
  //if (ojo == false) {
  myCar.drive();
  //}
  myCar2.display();
  myCar2.drive();
  lleiNais(2);
}

void lleiNais(int tipusLlei) {
  if (tipusLlei == 1) {
  } else {
    if (tipusLlei == 2) {
      if (
      (myCar.xpos)+30 >= (myCar2.xpos)-20 &&
        (myCar.xpos)+20 <= (myCar2.xpos)+20

        ) {
          console.log("asd");
        ojo = true;
      } else {
        //console.log(myCar.xpos+" "+myCar2.xpos);
        ojo = false;
      }
    }
  }
}

static class Car {
  color c;
  int xpos;
  int ypos;
  int xspeed;
  int direccioC;

  Car(color tempC, int tempXpos, int tempYpos, int tempXspeed, int direccio) {    
    c = tempC;   
    xpos = tempXpos;   
    ypos = tempYpos;   
    xspeed = tempXspeed;
    direccioC = direccio;
  }

  void display() {
    stroke(0);
    fill(c);
    if (direccioC == 2) {
      rect(xpos, ypos, 60, 40);
    } else {
      if (direccioC == 3) {
        rect(xpos, ypos, 40, 60);
      }
    }
  }

  void drive() {
    if (direccioC == 2) {
      xpos = xpos + xspeed;

      if (xpos >= width) {
        xpos = 0;
      }
    } else {
      if (direccioC == 3) {
        ypos = ypos + xspeed;

        if (ypos >= height) {
          ypos = 0;
        }
      }
    }
  }
}

static class Carretera {

  color c;
  int xpos;
  int ypos;
  int direccioC;

  Carretera(color tempC, int tempXpos, int tempYpos, int direccio) {    
    c = tempC;   
    xpos = tempXpos;   
    ypos = tempYpos;   
    direccioC = direccio;
  }

  void display() {
    noStroke();
    fill(c);
    if (direccioC == 2) {
      rect(xpos, ypos, 1024, 80);
    } else {
      if (direccioC == 3) {
        rect(xpos, ypos, 80, 1024);
      }
    }
  }
}

