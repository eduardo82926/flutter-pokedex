class Pokemon {
  final String id;
  final String nome;
  final String descricao;
  final List<String> tipos;
  final List<String> fraquezas;
  final List<String> evolucoes;

  Pokemon(this.id, this.nome, this.descricao, this.tipos, this.fraquezas, this.evolucoes){
    setArrowEvolutions();
  }

  void setArrowEvolutions(){
    int qntEvo = this.evolucoes.length - 1;
    if(qntEvo > 0){
      for(int i = 1, j = 1; i <= qntEvo; i++, j+=2){
        this.evolucoes.insert(j, ">");
      }
    }
  }
}