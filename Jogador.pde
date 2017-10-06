class Jogador extends Entidade{
  
  //Atributos
  boolean[] wasd = {false, false, false, false};
  boolean atirando;
  float velocidadeX, velocidadeY;
  
  //Construtor
  public Jogador(){
    super(width/2-12, height-50, 24, 40, color(0, 200, 0));
    this.atirando = false;
    this.velocidadeX = 5;
    this.velocidadeY = 5;
  }
  
  //Metodos
  void rodar(){
    this.mover();
    if(this.atirando == true){
      this.atirar();
    }
    this.desenhar();
  }
  
  void desenhar(){
    noStroke();
    fill(this.cor);
    rect(this.x, this.y, this.largura, this.altura, 15, 15, 0, 0);
  }
  
  void mover(){
    if(this.wasd[0] == true && this.y > 0){
      this.y -= velocidadeY;
    }
    else if(this.wasd[2] == true && this.y < height-this.altura){
      this.y += velocidadeY;
    }
    if(this.wasd[1] == true && this.x > 0){
      this.x -= velocidadeX;
    }
    else if(this.wasd[3] == true && this.x < width-this.largura){
      this.x += velocidadeX;
    }
  }
  
  void atirar(){
    if(frameCount % 6 == 0){
      balas.add(new Projetil(p1.x+p1.largura/2, p1.y));
    }
  }


}