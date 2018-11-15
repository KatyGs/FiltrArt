class Inicio{
  PFont titulo, desc, inst;
  
  Inicio(){
      titulo = createFont ("Courgette.ttf",56);
      desc = createFont ("Assistant.ttf",21);
      inst = createFont ("Alegreya.ttf",19);
  }
  
  void display(){
      background(23);
      textAlign(CENTER);
      textMode(MODEL);
      textFont(titulo);
      text("#FiltrArt", width/2, height/6.5);
      textFont(desc);
      fill(255,148,154);
      text("Filtros inspirados en diferentes vanguardias,", width/2, height/3.8);
      text("da un recorrido con tu imagen por distintas tecnicas famosas.", width/2, height/3.2);
      textSize(16);
      text("Para una mejor experiencia muevete constantemente", width/2, 385);
      fill(148,240,255);
      text("(PARA EMPEZAR PRESIONA 'ENTER')", width/2, 430);
      fill(255);
      textFont(inst);  
      text("Los filtros apareseran al presionar las teclas en el orden que se muestra:", width/2, height/2.6);
      text("'I' para impresionismo", width/2, 228);
      text("'P' para Puntillismo", width/2, 258);
      text("'F' para Fauvismo", width/2, 288);
      text("'C' para Cubismo'A' para PopArt", width/2, 318);
      //text("'A' para PopArt"", width/2, 348);
      text("Presiona 'BACKSPACE' para regresar al inicio", width/2, 348);
      if(key == ENTER){
       vanguardia = 1;
     } 
  }
}
