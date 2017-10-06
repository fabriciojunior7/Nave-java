class Projetil extends Entidade{

  //Atributos
  float velocidadeX, velocidadeY;
  
  //Construtor
  public Projetil(float x, float y){
    super(x, y, 5, 5, color(255, 51, 153));
    this.velocidadeX = 0;
    this.velocidadeY = 10;
  }

  //Metodos
  void rodar(){
    this.mover();
    this.desenhar();
  }
  
  void desenhar(){
    noStroke();
    fill(this.cor);
    rect(this.x, this.y, this.largura, this.altura, 15, 15, 0, 0);
  }
  
  void mover(){
    this.y -= this.velocidadeY;
  }

}