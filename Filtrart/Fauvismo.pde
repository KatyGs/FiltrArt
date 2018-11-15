class Fauvismo{
  color rojo,verde,azul,amarillo,naranja;
  int numPixels;
  int colores;
  
  Fauvismo(){
    this.rojo = color(255,76,75);
    this.verde = color(114,255,119);
    this.azul = color (102,250,255);
    this.amarillo = color (232,212,80);
    this.naranja = color (232,107,49);
    this.numPixels = video.width * video.height;
    opencv.startBackgroundSubtraction(5, 3, 0.5);
  }
  
  void display(){
      colores(); 
      if (key == 'c' || key == 'C'){
         vanguardia = 5;
      }
    }
  
  void colores(){
      if (video.available()) {
        video.read();
        opencv.loadImage(video);
        opencv.updateBackground();
  
        video.loadPixels();
        int threshold = 127; // Set the threshold value
        int threshold2 = 200;
        float pixelBrightness; // Declare variable to store a pixel's color
        // Turn each pixel in the video frame black or white depending on its brightness
        loadPixels();
          for (int i = 0; i < numPixels; i++) {
            pixelBrightness = brightness(video.pixels[i]);
              if (pixelBrightness > threshold) { // If the pixel is brighter than the
                pixels[i] = rojo; // threshold value, make it warm colors
              } 
              else { // Otherwise,
                pixels[i] = azul; 
              }
              if (pixelBrightness > threshold2){
                pixels[i] = amarillo;
              }
              if (pixelBrightness < threshold2/4){
                pixels[i] = verde;
              }
              if (pixelBrightness > threshold2+25) { 
                pixels[i] = naranja; 
              }
            
          }
        
        updatePixels();
    }
        opencv.dilate();
        opencv.erode();
              
        noFill();
        stroke(0);
        strokeCap(ROUND);
        strokeJoin(ROUND);
        strokeWeight(3);
        for (Contour contour : opencv.findContours()) {
             contour.draw();
         }
    
  }
  
}
