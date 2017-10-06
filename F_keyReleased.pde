void keyReleased(){
  
  //Movimentacao
  if(keyCode == 87 || keyCode == 38){
    p1.wasd[0] = false;
  }
  else if(keyCode == 83 || keyCode == 40){
    p1.wasd[2] = false;
  }
  if(keyCode == 65 || keyCode == 37){
    p1.wasd[1] = false;
  }
  else if(keyCode == 68 || keyCode == 39){
    p1.wasd[3] = false;
  }
  
  //Atirar
  if(keyCode == 32){
    p1.atirando = false;
  }
  
}