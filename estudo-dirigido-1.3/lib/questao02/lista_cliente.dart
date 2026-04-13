import '../questao01/cliente.dart';

class ListaCliente {

  List<Cliente> _clientes = [];

  inserir(Cliente cliente) {
    _clientes.add(cliente);
  }

  remover(int i) {
    if (i >= 0 && i < _clientes.length) {
      _clientes.removeAt(i);
    } else {
      print("Indice invalido!");
    }
  }

  int tamanho() {
    return _clientes.length;
  }

  Cliente? get(int i) {
    if (i >= 0 && i < _clientes.length) {
      return _clientes[i];
    }
    print("Indice invalido!");
    return null;
  }

  exibirLista() {
    for (var cliente in _clientes) {
      cliente.exibirCliente();
    }
  }

}
