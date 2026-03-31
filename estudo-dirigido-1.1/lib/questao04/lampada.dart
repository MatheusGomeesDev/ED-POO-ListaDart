class Lampada {

  bool _ligada;
  int _qtdLigacoes;
  bool _queimada;

  Lampada(this._ligada, this._qtdLigacoes, this._queimada);

  exibirEstado() {
    print("======================================");
    if(_ligada) {
      print("A lampada esta ligada");
    } else {
      print("A lampada esta desligada");
    }

    if(_queimada) {
      print("A lampada esta queimada");
    } else {
      print("A lampada nao esta queimada");
    }

   }

  ligarLampada() {
    if(_queimada) {
      print("A lampada esta queimada");
      return;
    }
    if(_ligada) {
      print("A lampada ja esta ligada");
      return;
    }

    _qtdLigacoes++;

    if(_qtdLigacoes > 5) {
      _queimada = true;
      print("A lampada queimou");
      return;
    }
    _ligada = true;
  }

   desligarLampada() {
    if(_queimada) {
      print("A lampada esta queimada");
      return;
    }
    if(!_ligada) {
      print("A lampada ja esta desligada");
      return;
    }
    _ligada = false;
  }
}
