class Inimigo extends Entidade{

  //Atributos
  float velocidadeX, velocidadeY, velocidadeBase;
  int tipo, areaDeAcao;
  
  //Construtor
  public Inimigo(){
    super(0, 0, 24, 40, color(255, 0, 0));
    this.velocidadeBase = random(1, 3);
    this.velocidadeX = 0;
    this.velocidadeY = random(1, 3);
    this.x = round(random(0, width-this.largura));
    this.y = round(random(-500, 0));
    this.tipo = round(random(1,3));
    //this.tipo = 3;
    if(tipo == 1){this.velocidadeX = 0;}
    else if(tipo == 2){this.velocidadeX = random(-3, 3);}
    else if(tipo == 3){
      this.velocidadeX = random(-3, 3);
      this.areaDeAcao = round(random(20, 100));
      this.xBase = this.x;
    }
    
  }
  
  //Metodos
  void rodar(){
    this.mover();
    this.desenhar();
  }
  
  void desenhar(){
    noStroke();
    fill(this.cor);
    rect(this.x, this.y, this.largura, this.altura, 0, 0, 15, 15);
  }
  
  void mover(){
    this.x += this.velocidadeX;
    this.y += this.velocidadeY;
    if(this.x < 0 || this.x > width-this.largura){
      this.velocidadeX *= -1;
    }
    if(this.y > height){
      this.reset();
    }
    if(this.tipo == 3 && (this.x < this.xBase-this.areaDeAcao || this.x > this.xBase+this.areaDeAcao)){
      this.velocidadeX *= -1;
    }
  }
  
  void reset(){
    inimigos.remove(this);
    inimigos.add(new Inimigo());
  }
  
  
}