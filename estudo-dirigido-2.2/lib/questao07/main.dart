abstract class Animal {
  String nome;

  Animal(this.nome) {
    if (nome.isEmpty) {
      throw ArgumentError('O nome nao pode ser vazio');
    }
  }

  void emitirSom();
}

class Cachorro extends Animal {
  Cachorro(String nome) : super(nome);

  @override
  void emitirSom() {
    print("$nome: au au");
    print("==============================================");
  }
}

class Gato extends Animal {
  Gato(String nome) : super(nome);

  @override
  void emitirSom() {
    print("$nome: miau");
    print("==============================================");
  }
}

class Passaro extends Animal {
  Passaro(String nome) : super(nome);

  @override
  void emitirSom() {
    print("$nome: piu piu");
    print("==============================================");
  }
}

class Vaca extends Animal {
  Vaca(String nome) : super(nome);

  @override
  void emitirSom() {
    print("$nome: muuu");
    print("==============================================");
  }
}

void main() {
  Animal cachorro = Cachorro("Rex");
  Animal gato = Gato("Mimi");
  Animal passaro = Passaro("Piu");
  Animal vaca = Vaca("Mimosa");

  cachorro.emitirSom();
  gato.emitirSom();
  passaro.emitirSom();
  vaca.emitirSom();
}
