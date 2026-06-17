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

  ligar() {
    print("$marca $modelo esta ligando...");
  }
}

class Smartphone extends Dispositivo {
  String sistemaOperacional;

  Smartphone(String marca, String modelo, this.sistemaOperacional) : super(marca, modelo) {
    if (sistemaOperacional.isEmpty) {
      throw ArgumentError('O sistema operacional nao pode ser vazio');
    }
  }

  @override
  ligar() {
    print("Smartphone $marca $modelo ligando com $sistemaOperacional...");
    print("==============================================");
  }
}

void main() {
  Smartphone smartphone = Smartphone("Samsung", "Galaxy S24", "Android");
  Dispositivo notebook = Dispositivo("Dell", "Inspiron");

  print("--- Smartphone ---");
  smartphone.ligar();

  print("--- Notebook ---");
  notebook.ligar();
  print("==============================================");
}
