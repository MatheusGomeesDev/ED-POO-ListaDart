class Contador {

  int _contador;

  Contador(this._contador) {
    if (_contador < 0) {
      throw ArgumentError('O valor inicial do contador e invalido');
    }
  }

  incrementar() {
      _contador++;
  }

  decrementar() {
    if (_contador == 0) {
      print("O valor do contador ja e zero");
      return;
    }
    _contador--;
  }

  zerar() {
    _contador = 0;
  }

  exibirValor() {
    print("O valor do contador e: $_contador");
  }

}
