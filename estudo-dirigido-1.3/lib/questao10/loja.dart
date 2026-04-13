import '../questao01/cliente.dart';
import '../questao02/lista_cliente.dart';
import '../questao03/produto.dart';
import '../questao04/lista_produto.dart';
import '../questao09/pedido.dart';

class Loja {

  String _nome;
  ListaCliente _clientes;
  ListaProduto _produtos;
  List<Pedido> _pedidos;

  Loja(this._nome, this._clientes, this._produtos)
      : _pedidos = [] {
    if (_nome.isEmpty) {
      throw ArgumentError('O nome nao pode ser vazio');
    }
  }

  String get nome => _nome;
  ListaCliente get clientes => _clientes;
  ListaProduto get produtos => _produtos;
  List<Pedido> get pedidos => _pedidos;

  set nome(String valor) {
    if (valor.isNotEmpty) {
      _nome = valor;
    }
  }

  set clientes(ListaCliente valor) {
    _clientes = valor;
  }

  set produtos(ListaProduto valor) {
    _produtos = valor;
  }

  set pedidos(List<Pedido> valor) {
    _pedidos = valor;
  }

  cadastrarCliente(Cliente cliente) {
    _clientes.inserir(cliente);
  }

  cadastrarProduto(Produto produto) {
    _produtos.inserir(produto);
  }

  registrarPedido(Pedido pedido) {
    _pedidos.add(pedido);
  }

  exibirResumoLoja() {
    print("Loja: $_nome");
    print("=======================================");
    print("Clientes cadastrados: ${_clientes.tamanho()}");
    _clientes.exibirLista();
    print("Produtos cadastrados: ${_produtos.tamanho()}");
    _produtos.exibirLista();
    print("Pedidos registrados: ${_pedidos.length}");
    for (var pedido in _pedidos) {
      pedido.exibirResumoPedido();
    }
  }

}
