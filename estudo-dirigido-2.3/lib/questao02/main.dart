import 'lista_generica.dart';

class Produto {
  String nome;
  double preco;

  Produto(this.nome, this.preco) {
    if (nome.isEmpty) {
      throw ArgumentError('O nome nao pode ser vazio');
    }
    if (preco < 0) {
      throw ArgumentError('O preco nao pode ser negativo');
    }
  }
}

abstract class Exibivel {
  void exibir();
}

class ProdutoPerecivel extends Produto implements Exibivel {
  String dataValidade;

  ProdutoPerecivel(String nome, double preco, this.dataValidade) : super(nome, preco) {
    if (dataValidade.isEmpty) {
      throw ArgumentError('A data de validade nao pode ser vazia');
    }
  }

  @override
  void exibir() {
    print("Tipo: Produto Perecivel");
    print("Nome: $nome");
    print("Preco: R\$ ${preco.toStringAsFixed(2)}");
    print("Data de Validade: $dataValidade");
    print("==============================================");
  }

  @override
  String toString() {
    return "Produto Perecivel | Nome: $nome | Preco: R\$ ${preco.toStringAsFixed(2)} | Validade: $dataValidade";
  }
}

class ProdutoEletronico extends Produto implements Exibivel {
  int garantiaMeses;

  ProdutoEletronico(String nome, double preco, this.garantiaMeses) : super(nome, preco) {
    if (garantiaMeses < 1) {
      throw ArgumentError('A garantia deve ser maior que 0');
    }
  }

  @override
  void exibir() {
    print("Tipo: Produto Eletronico");
    print("Nome: $nome");
    print("Preco: R\$ ${preco.toStringAsFixed(2)}");
    print("Garantia: $garantiaMeses meses");
    print("==============================================");
  }

  @override
  String toString() {
    return "Produto Eletronico | Nome: $nome | Preco: R\$ ${preco.toStringAsFixed(2)} | Garantia: $garantiaMeses meses";
  }
}

void main() {
  ListaGenerica<Exibivel> produtos = ListaGenerica<Exibivel>();

  Exibivel p1 = ProdutoPerecivel("Leite", 6.50, "20/05/2026");
  Exibivel p2 = ProdutoPerecivel("Iogurte", 4.80, "18/05/2026");
  Exibivel p3 = ProdutoEletronico("Notebook", 3500.00, 24);
  Exibivel p4 = ProdutoEletronico("Smartphone", 2200.00, 12);
  Exibivel p5 = ProdutoPerecivel("Queijo", 28.90, "25/05/2026");

  produtos.adicionar(p1);
  produtos.adicionar(p2);
  produtos.adicionar(p3);
  produtos.adicionar(p4);
  produtos.adicionar(p5);

  print("=== Impressao dos Produtos ===");
  produtos.imprimirItens();

  print("\n=== Exibicao detalhada ===");
  for (var produto in produtos.obterItens()) {
    produto.exibir();
  }
}
