import 'lista_generica.dart';

abstract class Calculavel {
  double valorFinal();
}

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

  @override
  String toString() {
    return "Ingresso VIP | Evento: $evento | Valor: R\$ ${valor.toStringAsFixed(2)} | Adicional: R\$ ${valorAdicional.toStringAsFixed(2)} | Final: R\$ ${valorFinal().toStringAsFixed(2)}";
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

  @override
  String toString() {
    return "Ingresso Promocional | Evento: $evento | Valor: R\$ ${valor.toStringAsFixed(2)} | Desconto: R\$ ${desconto.toStringAsFixed(2)} | Final: R\$ ${valorFinal().toStringAsFixed(2)}";
  }
}

class IngressoCamarote extends Ingresso implements Calculavel {
  double taxaServico;
  String localizacao;

  IngressoCamarote(String evento, double valor, this.taxaServico, this.localizacao)
      : super(evento, valor) {
    if (taxaServico < 0) {
      throw ArgumentError('A taxa de servico nao pode ser negativa');
    }
    if (localizacao.isEmpty) {
      throw ArgumentError('A localizacao nao pode ser vazia');
    }
  }

  @override
  double valorFinal() {
    return valor + taxaServico;
  }

  @override
  String toString() {
    return "Ingresso Camarote | Evento: $evento | Valor: R\$ ${valor.toStringAsFixed(2)} | Taxa: R\$ ${taxaServico.toStringAsFixed(2)} | Local: $localizacao | Final: R\$ ${valorFinal().toStringAsFixed(2)}";
  }
}

void main() {
  ListaGenerica<Calculavel> ingressos = ListaGenerica<Calculavel>();

  Calculavel i1 = IngressoVip("Show Rock", 200.00, 80.00);
  Calculavel i2 = IngressoPromocional("Teatro Infantil", 100.00, 20.00);
  Calculavel i3 = IngressoCamarote("Festival Jazz", 300.00, 50.00, "Setor A");
  Calculavel i4 = IngressoPromocional("Cinema Especial", 60.00, 15.00);
  Calculavel i5 = IngressoVip("Show Pop", 180.00, 70.00);

  ingressos.adicionar(i1);
  ingressos.adicionar(i2);
  ingressos.adicionar(i3);
  ingressos.adicionar(i4);
  ingressos.adicionar(i5);

  print("=== Impressao dos Ingressos ===");
  ingressos.imprimirItens();

  print("\n=== Valores Finais ===");
  for (var ingresso in ingressos.obterItens()) {
    print("Valor Final: R\$ ${ingresso.valorFinal().toStringAsFixed(2)}");
  }
}
