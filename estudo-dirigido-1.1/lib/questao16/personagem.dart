class Personagem {

  String _nome;
  int _vida;
  int _ataque;

  Personagem(this._nome, this._vida, this._ataque) {
    if (_nome.isEmpty) {
      throw ArgumentError('O nome nao pode ser vazio');
    }
    if (_vida <= 0) {
      throw ArgumentError('A vida deve ser maior que 0');
    }
    if (_ataque <= 0) {
      throw ArgumentError('O ataque deve ser maior que 0');
    }
  }

  String get nome => _nome;
  int get vida => _vida;
  set vida(int valor) => _vida = valor;

  atacar(Personagem inimigo) {
    if (!estaVivo()) {
      print("$_nome nao pode atacar pois esta morto");
      return;
    }

    inimigo.vida = inimigo.vida - _ataque;

    if (inimigo.vida < 0) {
      inimigo.vida = 0;
    }

    print("$_nome atacou ${inimigo.nome}");
  }

  bool estaVivo() {
    return _vida > 0;
  }

  exibirStatus() {
    print("Nome: $_nome");
    print("Vida: $_vida");
    print("Ataque: $_ataque");
    print("=======================================");
  }

}
