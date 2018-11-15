import processing.video.*;
import gab.opencv.*;

Capture video;
OpenCV opencv;
//clases dentro de OpenCv, crean contornos
ArrayList<Contour> contours;
ArrayList<Contour> polygons;

Inicio inicio;
Camaraweb webcam;
Puntillismo puntillismo;
Cubismo cubismo;
Fauvismo fauvismo;
Impresionismo impresionismo;

int vanguardia;

void setup(){
  size(640, 480);
  smooth(4);
  
  inicio = new Inicio();
  
  video = new Capture(this, width, height);
  opencv = new OpenCV(this, video);
  
  video.start(); 
  
  webcam = new Camaraweb();
  puntillismo = new Puntillismo();
  cubismo = new Cubismo();
  fauvismo = new Fauvismo();
  impresionismo = new Impresionismo();
}

void draw(){
  
    switch(vanguardia){
      case 0:
      inicio.display();
      break;
      case 1:
      webcam.display();
      break;
      case 2:
      impresionismo.display();
      break;
      case 3:
      puntillismo.display();
      break;
      case 4:
      fauvismo.display();
      break;
      case 5:
      cubismo.display();
      break;
    }
}
