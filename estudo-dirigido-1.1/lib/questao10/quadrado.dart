class Quadrado {

  double _lado;
  String _caractere;

  Quadrado(this._lado, this._caractere) {
    if(_lado < 1) {
      throw ArgumentError('O lado do quadrado deve ser maior que 0');
    }
    if(_caractere.isEmpty || _caractere.length > 1) {
      throw ArgumentError('O caracter deve ter 1 caracter');
    }
  }

  double get lado => _lado;

  double calcularArea() {
    return _lado*_lado;
  }

  double calcularPerimetro() {
    return _lado*4;
  }

  bool ehIgual(Quadrado quadrado) {
    if(quadrado.lado == _lado) {
      print("Os quadrados sao iguais");
      print("======================================================");
      return true;
    } else if(quadrado.lado != _lado) {
      print("Os quadrados nao sao iguais");
      print("======================================================");
      return false;
    }
    throw ArgumentError('Os valores do quadrado estao incorretos');
  }

  desenhar() {
    String teste = "";
    for(int i = 0; i < _lado; i++) {
      teste = teste + _caractere;
    }
    for(int i = 0; i < _lado; i++) {
       print("$teste");
    }
    print("======================================================");
  }

  exibirDados() {
    print("O lado do quadrado e: $_lado");
    print("A area do quadrado e: ${calcularArea()}");
    print("O perimetro do quadrado e: ${calcularPerimetro()}");
    print("======================================================");
  }

}
