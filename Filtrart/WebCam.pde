//captura de cámara sin ningun filtro
class Camaraweb{
  
  Camaraweb(){
  }
  
  void display(){
     captura();
     
      if( key == 'i' || key == 'I'){
        vanguardia = 2;
      }
     
     // esrte metodo no funciona ya que se traba al cargar los pixeles 
     //ademas de que debes mantener presionada la tecla para que se vea el cambio
     /*
     if(keyPressed){
       switch(key){
         case 'p':
           puntillismo.display();
         break;
         case 'f':
           fauvismo.display();
         break;
         case 'c':
           cubismo.display();
         break;
       }
     }  */
  }
  
  void captura(){
    if (video.available()) {
        video.read();
       }
      image(video,0,0);
  }
}
