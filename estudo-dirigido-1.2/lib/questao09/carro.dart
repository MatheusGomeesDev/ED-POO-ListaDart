class Carro {

  String _modelo;
  int _quilometragem;

  Carro(this._modelo, this._quilometragem) {
    if (_modelo.isEmpty) {
      throw ArgumentError('O modelo nao pode ser vazio');
    }
    if (_quilometragem < 0) {
      throw ArgumentError('A quilometragem nao pode ser negativa');
    }
  }

  adicionarQuilometragem(int km) {
    _quilometragem += km;
  }

  exibir() {
    print("Modelo: $_modelo | Km: $_quilometragem");
    print("=======================================");
  }

}
