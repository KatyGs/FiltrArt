class Puntillismo{
  int cellSize = 12;
  int cols, rows;
  
  Puntillismo(){
    cols = width / cellSize;
    rows = height / cellSize;
  }
  
  void display(){
    puntos();
    
    if(key == 'f' || key == 'F'){
      vanguardia = 4;
    }
  }
  
  void puntos(){
      if (video.available()) {
          video.read();
          video.loadPixels();
      // Begin loop for columns
      for (int i = 0; i < cols; i+=1.5) {
        // Begin loop for rows
        for (int j = 0; j < rows; j+=1.6) {
        
          // Where are we, pixel-wise?
          int x = i*cellSize;
          int y = j*cellSize;
          int loc = (video.width - x - 1) + y*video.width; // Reversing x to mirror the image
        
          float r = red(video.pixels[loc]);
          float g = green(video.pixels[loc]);
          float b = blue(video.pixels[loc]);
          // Make a new color with an alpha component
          color c = color(r, g, b);
        
          // Code for drawing a single rect
          // Using translate in order for rotation to work properly
          pushMatrix();
          translate(x+cellSize/2, y+cellSize/2);
          // Rotation formula based on brightness
          rotate((2 * PI * brightness(c) / 255.0));
          ellipseMode(CENTER);
          fill(c);
          noStroke();
          // Rects are larger than the cell for some overlap
          ellipse(0, 0, cellSize+6, cellSize+6);
          popMatrix();
        }
      }
    }
  }

}
