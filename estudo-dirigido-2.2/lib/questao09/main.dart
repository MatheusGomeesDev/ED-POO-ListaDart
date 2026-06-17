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

  void exibirPedido();
}

class PedidoDelivery extends Pedido {
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

  double calcularValorFinal() {
    return valorTotal + taxaEntrega;
  }

  @override
  void exibirPedido() {
    print("Tipo: Delivery");
    print("Codigo: $codigo");
    print("Valor Total: R\$ ${valorTotal.toStringAsFixed(2)}");
    print("Endereco de Entrega: $enderecoEntrega");
    print("Taxa de Entrega: R\$ ${taxaEntrega.toStringAsFixed(2)}");
    print("Valor Final: R\$ ${calcularValorFinal().toStringAsFixed(2)}");
    print("==============================================");
  }
}

class PedidoRetirada extends Pedido {
  String nomeCliente;

  PedidoRetirada(int codigo, double valorTotal, this.nomeCliente) : super(codigo, valorTotal) {
    if (nomeCliente.isEmpty) {
      throw ArgumentError('O nome do cliente nao pode ser vazio');
    }
  }

  @override
  void exibirPedido() {
    print("Tipo: Retirada");
    print("Codigo: $codigo");
    print("Valor Total: R\$ ${valorTotal.toStringAsFixed(2)}");
    print("Cliente: $nomeCliente");
    print("==============================================");
  }
}

void main() {
  Pedido delivery = PedidoDelivery(1001, 120.00, "Rua A, 100", 15.00);
  Pedido retirada = PedidoRetirada(1002, 80.00, "Ana");

  delivery.exibirPedido();
  retirada.exibirPedido();
}
