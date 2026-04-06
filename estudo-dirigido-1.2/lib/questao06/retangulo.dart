class Retangulo {

  double _largura;
  double _altura;

  Retangulo(this._largura, this._altura) {
    if (_largura <= 0) {
      throw ArgumentError('A largura deve ser maior que 0');
    }
    if (_altura <= 0) {
      throw ArgumentError('A altura deve ser maior que 0');
    }
  }

  Retangulo.unitario() : _largura = 1, _altura = 1;

  Retangulo.quadrado(double lado)
      : _largura = lado,
        _altura = lado {
    if (lado <= 0) {
      throw ArgumentError('O lado deve ser maior que 0');
    }
  }

  double calcularArea() {
    return _largura * _altura;
  }

  double calcularPerimetro() {
    return 2 * (_largura + _altura);
  }

  exibirDados() {
    print("Largura: $_largura");
    print("Altura: $_altura");
    print("Area: ${calcularArea()}");
    print("Perimetro: ${calcularPerimetro()}");
    print("=======================================");
  }

}
