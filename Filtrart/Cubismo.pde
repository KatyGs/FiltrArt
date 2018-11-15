class Cubismo{
  color c,a,n;
  
  Cubismo(){
    opencv.startBackgroundSubtraction(5, 3, 0.5);
    opencv.threshold(70);
    contours = opencv.findContours();
    this.c = color(229,188,204);
    this.a = color (255,244,24);
    this.n = color (54,98,102);
  }
  
  void display(){
    lineas();
    if(key == BACKSPACE){
      vanguardia = 0;
    }
  }
  
  void lineas(){
      if (video.available()) {
          video.read();
         }
      
      image(video,0,0); 
      opencv.loadImage(video);
    
      opencv.updateBackground();
      
      opencv.dilate();
      opencv.erode();
    
      noFill();
      strokeCap(ROUND);
      strokeJoin(ROUND);
      strokeWeight(3);
      for (Contour contour : opencv.findContours()) {
        fill(this.a,50);
        stroke(255,244,24);
        contour.draw();
        
          stroke(255, 53, 53);
          beginShape();
            for (PVector point : contour.getPolygonApproximation().getPoints()) {
              vertex(point.x, point.y);
            }
          endShape(CLOSE);
          
          fill(this.n,90);
          stroke(47,156,181);
          beginShape();
            for (PVector point : contour.getPolygonApproximation().getPoints()) {
              vertex(point.x, point.y/2);
            }
          endShape(CLOSE);
          
          fill(this.c,60);
          stroke(255,141,186);
          beginShape();
            for (PVector point : contour.getPolygonApproximation().getPoints()) {
              vertex(point.x/2, point.y);
            }
          endShape(CLOSE);
          
      }
  }

}
