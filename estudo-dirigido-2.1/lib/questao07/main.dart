class Animal {
  String nome;

  Animal(this.nome) {
    if (nome.isEmpty) {
      throw ArgumentError('O nome nao pode ser vazio');
    }
  }

  emitirSom() {
    print("$nome emitiu um som");
  }
}

class Cachorro extends Animal {
  Cachorro(String nome) : super(nome);

  @override
  emitirSom() {
    print("$nome: au au");
    print("==============================================");
  }
}

class Gato extends Animal {
  Gato(String nome) : super(nome);

  @override
  emitirSom() {
    print("$nome: miau");
    print("==============================================");
  }
}

class Passaro extends Animal {
  Passaro(String nome) : super(nome);

  @override
  emitirSom() {
    print("$nome: piu piu");
    print("==============================================");
  }
}

void main() {
  Cachorro cachorro = Cachorro("Rex");
  Gato gato = Gato("Mimi");
  Passaro passaro = Passaro("Piu");

  cachorro.emitirSom();
  gato.emitirSom();
  passaro.emitirSom();
}
