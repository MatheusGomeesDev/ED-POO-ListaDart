import '../questao01/cliente.dart';
import '../questao05/item_carrinho.dart';
import '../questao06/lista_carrinho.dart';

class Carrinho {

  Cliente _cliente;
  ListaCarrinho _itens;
  bool _aberto;

  Carrinho(this._cliente, this._itens, this._aberto);

  Cliente get cliente => _cliente;
  ListaCarrinho get itens => _itens;
  bool get aberto => _aberto;

  set cliente(Cliente valor) {
    _cliente = valor;
  }

  set itens(ListaCarrinho valor) {
    _itens = valor;
  }

  set aberto(bool valor) {
    _aberto = valor;
  }

  adicionarItem(ItemCarrinho item) {
    _itens.inserir(item);
  }

  removerItem(int i) {
    _itens.remover(i);
  }

  double calcularTotal() {
    double total = 0;
    for (int i = 0; i < _itens.tamanho(); i++) {
      var item = _itens.get(i);
      if (item != null) {
        total += item.calcularSubtotal();
      }
    }
    return total;
  }

  exibirCarrinho() {
    print("Cliente: ${_cliente.nome}");
    print("Status: ${_aberto ? 'Aberto' : 'Fechado'}");
    print("Itens:");
    _itens.exibirLista();
    print("Total: R\$ ${calcularTotal().toStringAsFixed(2)}");
    print("=======================================");
  }

}
