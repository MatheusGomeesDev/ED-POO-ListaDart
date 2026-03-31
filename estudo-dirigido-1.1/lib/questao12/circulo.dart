class Circulo {

  double _raio;
  String _cor;

  const double pi = 3.14;

  Circulo(this._raio, this._cor) {
    if(_raio <= 0) {
      throw ArgumentError('O raio deve ser maior que 0');
    }
    if(_cor.isEmpty) {
      throw ArgumentError('A cor nao pode ser vazia');
    }
  }

  double calcularArea() {
    return pi * _raio * _raio;
  }

  double calcularPerimetro() {
    return 2 * pi * _raio;
  }

  exibirResumo() {
    print("Raio: $_raio");
    print("Cor: $_cor");
    print("Area: ${calcularArea()}");
    print("Perimetro: ${calcularPerimetro()}");
    print("=======================================");
  }

}
