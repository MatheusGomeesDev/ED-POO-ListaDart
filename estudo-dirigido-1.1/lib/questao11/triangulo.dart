import 'dart:math';

class Triangulo {

  double _lado1;
  double _lado2;
  double _lado3;
  String _caractere;

  Triangulo(this._lado1, this._lado2, this._lado3, this._caractere) {

    if(_lado1 <= 0 || _lado2 <= 0 || _lado3 <= 0) {
      throw ArgumentError('Os lados devem ser maiores que 0');
    }

    if(_lado1 + _lado2 <= _lado3 ||
       _lado1 + _lado3 <= _lado2 ||
       _lado2 + _lado3 <= _lado1) {
      throw ArgumentError('Os lados nao formam um triangulo valido');
    }

    if(_caractere.isEmpty || _caractere.length > 1) {
      throw ArgumentError('O caractere deve ter apenas 1 simbolo');
    }
  }

  double calcularPerimetro() {
    return _lado1 + _lado2 + _lado3;
  }

  double calcularArea() {
    double p = calcularPerimetro() / 2;
    double area = sqrt(p * (p - _lado1) * (p - _lado2) * (p - _lado3));
    return area;
  }

  desenharEsquerda() {
    for(int i = 1; i <= _lado1; i++) {
      String linha = "";
      for(int j = 0; j < i; j++) {
        linha += _caractere;
      }
      print(linha);
    }
    print("=======================================");
  }

  desenharCentralizado() {
    int altura = _lado1.toInt();

    for(int i = 1; i <= altura; i++) {

      String espacos = "";
      for(int j = 0; j < altura - i; j++) {
        espacos += " ";
      }

      String linha = "";
      for(int j = 0; j < (2 * i - 1); j++) {
        linha += _caractere;
      }

      print(espacos + linha);
    }
    print("=======================================");
  }

  exibirResumo() {
    print("Lado 1: $_lado1");
    print("Lado 2: $_lado2");
    print("Lado 3: $_lado3");
    print("Perimetro: ${calcularPerimetro()}");
    print("Area: ${calcularArea()}");
    print("=======================================");
  }

  alterarLados(double l1, double l2, double l3) {
    if(l1 <= 0 || l2 <= 0 || l3 <= 0) {
      throw ArgumentError('Os lados devem ser maiores que 0');
    }

    if(l1 + l2 <= l3 || l1 + l3 <= l2 || l2 + l3 <= l1) {
      throw ArgumentError('Triangulo invalido');
    }

    _lado1 = l1;
    _lado2 = l2;
    _lado3 = l3;
  }

  alterarCaractere(String novo) {
    if(novo.isEmpty || novo.length > 1) {
      throw ArgumentError('Caractere invalido');
    }
    _caractere = novo;
  }

}