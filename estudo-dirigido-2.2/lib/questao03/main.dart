abstract class Veiculo {
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

  void exibirFicha();
}

class Carro extends Veiculo {
  int quantidadePortas;

  Carro(String marca, String modelo, int ano, this.quantidadePortas) : super(marca, modelo, ano) {
    if (quantidadePortas < 1) {
      throw ArgumentError('A quantidade de portas deve ser maior que 0');
    }
  }

  @override
  void exibirFicha() {
    print("Tipo: Carro");
    print("Marca: $marca");
    print("Modelo: $modelo");
    print("Ano: $ano");
    print("Quantidade de Portas: $quantidadePortas");
    print("==============================================");
  }
}

class Moto extends Veiculo {
  int cilindradas;

  Moto(String marca, String modelo, int ano, this.cilindradas) : super(marca, modelo, ano) {
    if (cilindradas < 1) {
      throw ArgumentError('As cilindradas devem ser maiores que 0');
    }
  }

  @override
  void exibirFicha() {
    print("Tipo: Moto");
    print("Marca: $marca");
    print("Modelo: $modelo");
    print("Ano: $ano");
    print("Cilindradas: $cilindradas cc");
    print("==============================================");
  }
}

void main() {
  Veiculo carro = Carro("Toyota", "Corolla", 2022, 4);
  Veiculo moto = Moto("Yamaha", "Fazer", 2023, 250);

  carro.exibirFicha();
  moto.exibirFicha();
}
