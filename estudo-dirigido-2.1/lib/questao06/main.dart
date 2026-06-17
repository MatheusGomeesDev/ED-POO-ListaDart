class Ingresso {
  String evento;
  double valor;

  Ingresso(this.evento, this.valor) {
    if (evento.isEmpty) {
      throw ArgumentError('O evento nao pode ser vazio');
    }
    if (valor < 0) {
      throw ArgumentError('O valor nao pode ser negativo');
    }
  }

  exibirResumo() {
    print("Evento: $evento");
    print("Valor: R\$ ${valor.toStringAsFixed(2)}");
  }
}

class IngressoVip extends Ingresso {
  double valorAdicional;

  IngressoVip(String evento, double valor, this.valorAdicional) : super(evento, valor) {
    if (valorAdicional < 0) {
      throw ArgumentError('O valor adicional nao pode ser negativo');
    }
  }

  double valorFinal() {
    return valor + valorAdicional;
  }

  @override
  exibirResumo() {
    print("Tipo: VIP");
    super.exibirResumo();
    print("Valor Adicional: R\$ ${valorAdicional.toStringAsFixed(2)}");
    print("Valor Final: R\$ ${valorFinal().toStringAsFixed(2)}");
    print("==============================================");
  }
}

void main() {
  IngressoVip ingresso = IngressoVip("Show Rock", 200.00, 80.00);

  print("--- Ingresso VIP ---");
  ingresso.exibirResumo();
}
