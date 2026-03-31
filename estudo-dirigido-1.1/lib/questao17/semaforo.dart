class Semaforo {

  String _corAtual;
  int _tempoRestante;

  Semaforo(this._corAtual, this._tempoRestante) {
    if(_corAtual != "vermelho" && _corAtual != "verde" && _corAtual != "amarelo") {
      throw ArgumentError('Cor invalida');
    }
    if(_tempoRestante <= 0) {
      throw ArgumentError('Tempo invalido');
    }
  }

  trocarCor() {
    if(_corAtual == "vermelho") {
      _corAtual = "verde";
      _tempoRestante = 4;
    } else if(_corAtual == "verde") {
      _corAtual = "amarelo";
      _tempoRestante = 2;
    } else if(_corAtual == "amarelo") {
      _corAtual = "vermelho";
      _tempoRestante = 5;
    }
  }

  reduzirTempo() {
    _tempoRestante--;

    if(_tempoRestante == 0) {
      trocarCor();
    }
  }

  exibirEstado() {
    String emoji;

    if(_corAtual == "vermelho") {
      emoji = "🔴";
    } else if(_corAtual == "verde") {
      emoji = "🟢";
    } else {
      emoji = "🟡";
    }

    print("Cor: $emoji ($_corAtual)");
    print("Tempo restante: $_tempoRestante");
    print("=======================================");
  }

}
