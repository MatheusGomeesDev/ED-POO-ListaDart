import 'lista_generica.dart';

abstract class Ligavel {
  void ligar();
  void desligar();
}

class Dispositivo {
  String marca;
  String modelo;

  Dispositivo(this.marca, this.modelo) {
    if (marca.isEmpty) {
      throw ArgumentError('A marca nao pode ser vazia');
    }
    if (modelo.isEmpty) {
      throw ArgumentError('O modelo nao pode ser vazio');
    }
  }
}

class Smartphone extends Dispositivo implements Ligavel {
  String sistemaOperacional;

  Smartphone(String marca, String modelo, this.sistemaOperacional) : super(marca, modelo) {
    if (sistemaOperacional.isEmpty) {
      throw ArgumentError('O sistema operacional nao pode ser vazio');
    }
  }

  @override
  void ligar() {
    print("Smartphone $marca $modelo ligando com $sistemaOperacional...");
    print("==============================================");
  }

  @override
  void desligar() {
    print("Smartphone $marca $modelo desligando...");
    print("==============================================");
  }

  @override
  String toString() {
    return "Smartphone | $marca $modelo | Sistema: $sistemaOperacional";
  }
}

class Notebook extends Dispositivo implements Ligavel {
  int memoriaRam;

  Notebook(String marca, String modelo, this.memoriaRam) : super(marca, modelo) {
    if (memoriaRam < 1) {
      throw ArgumentError('A memoria RAM deve ser maior que 0');
    }
  }

  @override
  void ligar() {
    print("Notebook $marca $modelo ligando com ${memoriaRam}GB de RAM...");
    print("==============================================");
  }

  @override
  void desligar() {
    print("Notebook $marca $modelo desligando...");
    print("==============================================");
  }

  @override
  String toString() {
    return "Notebook | $marca $modelo | RAM: ${memoriaRam}GB";
  }
}

class Televisao extends Dispositivo implements Ligavel {
  int tamanhoPolegadas;

  Televisao(String marca, String modelo, this.tamanhoPolegadas) : super(marca, modelo) {
    if (tamanhoPolegadas < 1) {
      throw ArgumentError('O tamanho em polegadas deve ser maior que 0');
    }
  }

  @override
  void ligar() {
    print("Televisao $marca $modelo ligando com ${tamanhoPolegadas} polegadas...");
    print("==============================================");
  }

  @override
  void desligar() {
    print("Televisao $marca $modelo desligando...");
    print("==============================================");
  }

  @override
  String toString() {
    return "Televisao | $marca $modelo | Tamanho: ${tamanhoPolegadas} polegadas";
  }
}

void main() {
  ListaGenerica<Ligavel> dispositivos = ListaGenerica<Ligavel>();

  Ligavel d1 = Smartphone("Samsung", "Galaxy S24", "Android");
  Ligavel d2 = Smartphone("Apple", "iPhone 15", "iOS");
  Ligavel d3 = Notebook("Dell", "Inspiron", 16);
  Ligavel d4 = Notebook("Lenovo", "ThinkPad", 32);
  Ligavel d5 = Televisao("LG", "OLED55", 55);

  dispositivos.adicionar(d1);
  dispositivos.adicionar(d2);
  dispositivos.adicionar(d3);
  dispositivos.adicionar(d4);
  dispositivos.adicionar(d5);

  print("=== Impressao dos Dispositivos ===");
  dispositivos.imprimirItens();

  print("\n=== Ligando e Desligando ===");
  for (var dispositivo in dispositivos.obterItens()) {
    dispositivo.ligar();
    dispositivo.desligar();
  }
}
