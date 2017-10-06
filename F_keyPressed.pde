void keyPressed(){
  
  println(keyCode);
  //Movimentacao
  if(keyCode == 87 || keyCode == 38){
    p1.wasd[0] = true;
  }
  else if(keyCode == 83 || keyCode == 40){
    p1.wasd[2] = true;
  }
  if(keyCode == 65 || keyCode == 37){
    p1.wasd[1] = true;
  }
  else if(keyCode == 68 || keyCode == 39){
    p1.wasd[3] = true;
  }
  
  //Atirar
  if(keyCode == 32){
    p1.atirando = true;
  }
  
}