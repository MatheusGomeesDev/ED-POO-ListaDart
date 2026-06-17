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

  exibir() {
    print("Nome: $nome");
    print("Preco: R\$ ${preco.toStringAsFixed(2)}");
  }
}

class ProdutoPerecivel extends Produto {
  String dataValidade;

  ProdutoPerecivel(String nome, double preco, this.dataValidade) : super(nome, preco) {
    if (dataValidade.isEmpty) {
      throw ArgumentError('A data de validade nao pode ser vazia');
    }
  }

  @override
  exibir() {
    super.exibir();
    print("Data de Validade: $dataValidade");
    print("==============================================");
  }
}

void main() {
  ProdutoPerecivel produto = ProdutoPerecivel("Iogurte", 5.99, "10/06/2026");

  print("--- Produto Perecivel ---");
  produto.exibir();
}
