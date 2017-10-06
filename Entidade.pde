class Entidade{

  //Atributos
  float x, y, xBase, yBase;
  int largura, altura;
  color cor;
  
  //Contrutor
  Entidade(float x, float y, int largura, int altura, color cor){
    this.xBase = x;
    this.yBase = y;
    this.x = x;
    this.y = y;
    this.largura = largura;
    this.altura = altura;
    this.cor = cor;
  }
  
  //Metodos
  void desenhar(){
    noStroke();
    fill(this.cor);
    rect(this.x, this.y, this.largura, this.altura);
  }
  
}