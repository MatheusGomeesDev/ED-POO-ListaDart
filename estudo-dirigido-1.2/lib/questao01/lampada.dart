class Lampada {

  bool _ligada;
  int _intensidade;

  Lampada() : _ligada = false, _intensidade = 50;

  ligar() {
    _ligada = true;
  }

  desligar() {
    _ligada = false;
  }

  aumentar() {
    if (_intensidade < 100) {
      _intensidade += 10;
    } else {
      print("A intensidade ja esta no maximo");
    }
  }

  diminuir() {
    if (_intensidade > 0) {
      _intensidade -= 10;
    } else {
      print("A intensidade ja esta no minimo");
    }
  }

  exibirEstado() {
    print("Ligada: $_ligada");
    print("Intensidade: $_intensidade");
    print("=======================================");
  }

}
