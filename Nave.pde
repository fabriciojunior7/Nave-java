//Fabricio Vidal da Costa Junior
//Inicio: 06/10/2017
//Ultima Atualizacao: 06/10/2017
//Fim: ?

Jogador p1;
Paisagem fundo;

int numInimigos = 10;

ArrayList<Projetil> balas = new ArrayList();
ArrayList<Inimigo> inimigos = new ArrayList();

void setup() {

  size(800, 600);
  frameRate(60);

  fundo = new Paisagem();
  p1 = new Jogador();
  
  for(int i=0; i<numInimigos; i++){
    inimigos.add(new Inimigo());  
  }
  
}