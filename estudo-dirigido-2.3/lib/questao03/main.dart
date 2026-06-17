import 'lista_generica.dart';

abstract class Fichavel {
  void exibirFicha();
}

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
}

class Carro extends Veiculo implements Fichavel {
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

  @override
  String toString() {
    return "Carro | $marca $modelo | Ano: $ano | Portas: $quantidadePortas";
  }
}

class Moto extends Veiculo implements Fichavel {
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

  @override
  String toString() {
    return "Moto | $marca $modelo | Ano: $ano | Cilindradas: $cilindradas cc";
  }
}

class Caminhao extends Veiculo implements Fichavel {
  double capacidadeCarga;

  Caminhao(String marca, String modelo, int ano, this.capacidadeCarga) : super(marca, modelo, ano) {
    if (capacidadeCarga <= 0) {
      throw ArgumentError('A capacidade de carga deve ser maior que 0');
    }
  }

  @override
  void exibirFicha() {
    print("Tipo: Caminhao");
    print("Marca: $marca");
    print("Modelo: $modelo");
    print("Ano: $ano");
    print("Capacidade de Carga: ${capacidadeCarga.toStringAsFixed(1)} toneladas");
    print("==============================================");
  }

  @override
  String toString() {
    return "Caminhao | $marca $modelo | Ano: $ano | Carga: ${capacidadeCarga.toStringAsFixed(1)} ton";
  }
}

void main() {
  ListaGenerica<Fichavel> veiculos = ListaGenerica<Fichavel>();

  Fichavel v1 = Carro("Toyota", "Corolla", 2022, 4);
  Fichavel v2 = Carro("Honda", "Civic", 2021, 4);
  Fichavel v3 = Moto("Yamaha", "Fazer", 2023, 250);
  Fichavel v4 = Moto("Honda", "Biz", 2020, 125);
  Fichavel v5 = Caminhao("Volvo", "VM", 2019, 12.0);

  veiculos.adicionar(v1);
  veiculos.adicionar(v2);
  veiculos.adicionar(v3);
  veiculos.adicionar(v4);
  veiculos.adicionar(v5);

  print("=== Impressao dos Veiculos ===");
  veiculos.imprimirItens();

  print("\n=== Fichas dos Veiculos ===");
  for (var veiculo in veiculos.obterItens()) {
    veiculo.exibirFicha();
  }
}
