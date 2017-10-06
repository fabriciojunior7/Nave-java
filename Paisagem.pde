class Paisagem{
  //Atributos
  int espacamento, numLinhas;
  Linha[] linhas;
  
  //Construtor
  public Paisagem(){
    espacamento = 200;
    numLinhas = int(height/espacamento);
    linhas = new Linha[numLinhas];
    for(int i=0; i<numLinhas; i++){
      linhas[i] = new Linha(0, espacamento*i);
    }
  }
  
  //Metodos
  void desenhar(){
    for(int i=0; i<this.numLinhas; i++){
      linhas[i].desenhar();
    }
  }
  
  void mover(float velocidade){
    for(int i=0; i<this.numLinhas; i++){
      linhas[i].y += velocidade;
      if(linhas[i].y > height){
        linhas[i].y = 0;
      }
    }
  }

}

class Linha{
  
  //Atributos
  float x, y;
  
  //Construtor
  public Linha(float x, float y){
    this.x = x;
    this.y = y;
  }
  
  //Metodos
  void desenhar(){
    stroke(255);
    line(this.x, this.y, this.x+width, this.y);
  }
  
}