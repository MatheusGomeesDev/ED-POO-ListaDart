import 'lista_generica.dart';

abstract class Processavel {
  double valorFinal();
  void exibirPedido();
}

abstract class Pedido {
  int codigo;
  double valorTotal;

  Pedido(this.codigo, this.valorTotal) {
    if (codigo < 1) {
      throw ArgumentError('O codigo deve ser maior que 0');
    }
    if (valorTotal < 0) {
      throw ArgumentError('O valor total nao pode ser negativo');
    }
  }
}

class PedidoDelivery extends Pedido implements Processavel {
  String enderecoEntrega;
  double taxaEntrega;

  PedidoDelivery(int codigo, double valorTotal, this.enderecoEntrega, this.taxaEntrega)
      : super(codigo, valorTotal) {
    if (enderecoEntrega.isEmpty) {
      throw ArgumentError('O endereco de entrega nao pode ser vazio');
    }
    if (taxaEntrega < 0) {
      throw ArgumentError('A taxa de entrega nao pode ser negativa');
    }
  }

  @override
  double valorFinal() {
    return valorTotal + taxaEntrega;
  }

  @override
  void exibirPedido() {
    print("Tipo: Delivery");
    print("Codigo: $codigo");
    print("Valor Total: R\$ ${valorTotal.toStringAsFixed(2)}");
    print("Endereco de Entrega: $enderecoEntrega");
    print("Taxa de Entrega: R\$ ${taxaEntrega.toStringAsFixed(2)}");
    print("Valor Final: R\$ ${valorFinal().toStringAsFixed(2)}");
    print("==============================================");
  }

  @override
  String toString() {
    return "Pedido Delivery | Codigo: $codigo | Valor: R\$ ${valorTotal.toStringAsFixed(2)} | Endereco: $enderecoEntrega | Final: R\$ ${valorFinal().toStringAsFixed(2)}";
  }
}

class PedidoRetirada extends Pedido implements Processavel {
  String nomeCliente;

  PedidoRetirada(int codigo, double valorTotal, this.nomeCliente) : super(codigo, valorTotal) {
    if (nomeCliente.isEmpty) {
      throw ArgumentError('O nome do cliente nao pode ser vazio');
    }
  }

  @override
  double valorFinal() {
    return valorTotal;
  }

  @override
  void exibirPedido() {
    print("Tipo: Retirada");
    print("Codigo: $codigo");
    print("Valor Total: R\$ ${valorTotal.toStringAsFixed(2)}");
    print("Cliente: $nomeCliente");
    print("Valor Final: R\$ ${valorFinal().toStringAsFixed(2)}");
    print("==============================================");
  }

  @override
  String toString() {
    return "Pedido Retirada | Codigo: $codigo | Valor: R\$ ${valorTotal.toStringAsFixed(2)} | Cliente: $nomeCliente";
  }
}

class PedidoExpress extends Pedido implements Processavel {
  double taxaUrgencia;

  PedidoExpress(int codigo, double valorTotal, this.taxaUrgencia) : super(codigo, valorTotal) {
    if (taxaUrgencia < 0) {
      throw ArgumentError('A taxa de urgencia nao pode ser negativa');
    }
  }

  @override
  double valorFinal() {
    return valorTotal + taxaUrgencia;
  }

  @override
  void exibirPedido() {
    print("Tipo: Express");
    print("Codigo: $codigo");
    print("Valor Total: R\$ ${valorTotal.toStringAsFixed(2)}");
    print("Taxa de Urgencia: R\$ ${taxaUrgencia.toStringAsFixed(2)}");
    print("Valor Final: R\$ ${valorFinal().toStringAsFixed(2)}");
    print("==============================================");
  }

  @override
  String toString() {
    return "Pedido Express | Codigo: $codigo | Valor: R\$ ${valorTotal.toStringAsFixed(2)} | Taxa Urgencia: R\$ ${taxaUrgencia.toStringAsFixed(2)} | Final: R\$ ${valorFinal().toStringAsFixed(2)}";
  }
}

void main() {
  ListaGenerica<Processavel> pedidos = ListaGenerica<Processavel>();

  Processavel p1 = PedidoDelivery(1001, 120.00, "Rua A, 100", 15.00);
  Processavel p2 = PedidoRetirada(1002, 80.00, "Ana");
  Processavel p3 = PedidoExpress(1003, 200.00, 40.00);
  Processavel p4 = PedidoDelivery(1004, 150.00, "Rua B, 250", 20.00);
  Processavel p5 = PedidoRetirada(1005, 60.00, "Bruno");

  pedidos.adicionar(p1);
  pedidos.adicionar(p2);
  pedidos.adicionar(p3);
  pedidos.adicionar(p4);
  pedidos.adicionar(p5);

  print("=== Impressao dos Pedidos ===");
  pedidos.imprimirItens();

  print("\n=== Detalhes e Valores Finais ===");
  for (var pedido in pedidos.obterItens()) {
    pedido.exibirPedido();
    print("Valor Final: R\$ ${pedido.valorFinal().toStringAsFixed(2)}");
  }
}
