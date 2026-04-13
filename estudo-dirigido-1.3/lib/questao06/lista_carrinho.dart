import '../questao05/item_carrinho.dart';

class ListaCarrinho {

  List<ItemCarrinho> _itens = [];

  inserir(ItemCarrinho item) {
    _itens.add(item);
  }

  remover(int i) {
    if (i >= 0 && i < _itens.length) {
      _itens.removeAt(i);
    } else {
      print("Indice invalido!");
    }
  }

  int tamanho() {
    return _itens.length;
  }

  ItemCarrinho? get(int i) {
    if (i >= 0 && i < _itens.length) {
      return _itens[i];
    }
    print("Indice invalido!");
    return null;
  }

  exibirLista() {
    for (var item in _itens) {
      item.exibirItem();
    }
  }

}
