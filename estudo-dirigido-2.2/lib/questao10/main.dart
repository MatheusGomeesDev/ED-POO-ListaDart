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

abstract class Ligavel {
  void ligar();
  void desligar();
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
}

void main() {
  Smartphone smartphone = Smartphone("Samsung", "Galaxy S24", "Android");
  Notebook notebook = Notebook("Dell", "Inspiron", 16);

  smartphone.ligar();
  smartphone.desligar();

  notebook.ligar();
  notebook.desligar();
}
