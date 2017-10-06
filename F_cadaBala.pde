void cadaBala(){

    for(int i=0; i<balas.size(); i++){
      balas.get(i).rodar();
      if(balas.get(i).y < -balas.get(i).altura){
        balas.remove(i);
      }
    }

}