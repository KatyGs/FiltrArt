class Impresionismo{
  
  Impresionismo(){
  
    }
    
    void display(){
      lienzo();
      if(key == 'p' || key == 'P'){
        vanguardia = 3;
      }
    }
    
    void lienzo(){
        if (video.available()) {
          video.read();
         }
      image(video,0,0);
      filter(BLUR, 4);
      filter(DILATE);
      filter(POSTERIZE, 9);
    }
 }
