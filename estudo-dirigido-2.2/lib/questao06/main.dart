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
}

abstract class Calculavel {
  double valorFinal();
}

class IngressoVip extends Ingresso implements Calculavel {
  double valorAdicional;

  IngressoVip(String evento, double valor, this.valorAdicional) : super(evento, valor) {
    if (valorAdicional < 0) {
      throw ArgumentError('O valor adicional nao pode ser negativo');
    }
  }

  @override
  double valorFinal() {
    return valor + valorAdicional;
  }

  exibir() {
    print("Tipo: VIP");
    print("Evento: $evento");
    print("Valor: R\$ ${valor.toStringAsFixed(2)}");
    print("Valor Adicional: R\$ ${valorAdicional.toStringAsFixed(2)}");
    print("Valor Final: R\$ ${valorFinal().toStringAsFixed(2)}");
    print("==============================================");
  }
}

class IngressoPromocional extends Ingresso implements Calculavel {
  double desconto;

  IngressoPromocional(String evento, double valor, this.desconto) : super(evento, valor) {
    if (desconto < 0) {
      throw ArgumentError('O desconto nao pode ser negativo');
    }
  }

  @override
  double valorFinal() {
    return valor - desconto;
  }

  exibir() {
    print("Tipo: Promocional");
    print("Evento: $evento");
    print("Valor: R\$ ${valor.toStringAsFixed(2)}");
    print("Desconto: R\$ ${desconto.toStringAsFixed(2)}");
    print("Valor Final: R\$ ${valorFinal().toStringAsFixed(2)}");
    print("==============================================");
  }
}

void main() {
  IngressoVip vip = IngressoVip("Show Rock", 200.00, 80.00);
  IngressoPromocional promo = IngressoPromocional("Teatro Infantil", 100.00, 20.00);

  vip.exibir();
  promo.exibir();
}
