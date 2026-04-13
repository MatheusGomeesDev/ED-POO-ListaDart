import '../questao03/produto.dart';

class ListaProduto {

  List<Produto> _produtos = [];

  inserir(Produto produto) {
    _produtos.add(produto);
  }

  remover(int i) {
    if (i >= 0 && i < _produtos.length) {
      _produtos.removeAt(i);
    } else {
      print("Indice invalido!");
    }
  }

  int tamanho() {
    return _produtos.length;
  }

  Produto? get(int i) {
    if (i >= 0 && i < _produtos.length) {
      return _produtos[i];
    }
    print("Indice invalido!");
    return null;
  }

  exibirLista() {
    for (var produto in _produtos) {
      produto.exibirProduto();
    }
  }

}
