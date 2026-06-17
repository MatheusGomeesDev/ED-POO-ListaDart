class Veiculo {
  String marca;
  String modelo;
  int ano;

  Veiculo(this.marca, this.modelo, this.ano) {
    if (marca.isEmpty) {
      throw ArgumentError('A marca nao pode ser vazia');
    }
    if (modelo.isEmpty) {
      throw ArgumentError('O modelo nao pode ser vazio');
    }
    if (ano < 1886) {
      throw ArgumentError('O ano deve ser valido');
    }
  }

  exibirFicha() {
    print("Marca: $marca");
    print("Modelo: $modelo");
    print("Ano: $ano");
  }
}

class Carro extends Veiculo {
  int quantidadePortas;

  Carro(String marca, String modelo, int ano, this.quantidadePortas) : super(marca, modelo, ano) {
    if (quantidadePortas < 1) {
      throw ArgumentError('A quantidade de portas deve ser maior que 0');
    }
  }

  @override
  exibirFicha() {
    super.exibirFicha();
    print("Quantidade de Portas: $quantidadePortas");
    print("==============================================");
  }
}

void main() {
  Carro carro = Carro("Toyota", "Corolla", 2022, 4);

  print("--- Carro ---");
  carro.exibirFicha();
}
