class Caixa {

  int _valor;

  Caixa(this._valor);

  setValor(int novoValor) {
    _valor = novoValor;
  }

  exibir() {
    print("Valor: $_valor");
    print("=======================================");
  }

}
