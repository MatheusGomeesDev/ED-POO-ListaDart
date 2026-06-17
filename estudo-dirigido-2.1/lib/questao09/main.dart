class Pedido {
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

  exibirPedido() {
    print("Codigo: $codigo");
    print("Valor Total: R\$ ${valorTotal.toStringAsFixed(2)}");
  }
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
  exibirPedido() {
    print("Tipo: Delivery");
    super.exibirPedido();
    print("Endereco de Entrega: $enderecoEntrega");
    print("Taxa de Entrega: R\$ ${taxaEntrega.toStringAsFixed(2)}");
    print("Valor Final: R\$ ${calcularValorFinal().toStringAsFixed(2)}");
    print("==============================================");
  }
}

void main() {
  PedidoDelivery pedido = PedidoDelivery(1001, 120.00, "Rua A, 100", 15.00);

  print("--- Pedido Delivery ---");
  pedido.exibirPedido();
}
