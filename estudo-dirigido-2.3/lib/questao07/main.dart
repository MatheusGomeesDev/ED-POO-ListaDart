import 'lista_generica.dart';

abstract class Sonoro {
  void emitirSom();
}

abstract class Animal {
  String nome;

  Animal(this.nome) {
    if (nome.isEmpty) {
      throw ArgumentError('O nome nao pode ser vazio');
    }
  }

  @override
  String toString() {
    return "${runtimeType} | Nome: $nome";
  }
}

class Cachorro extends Animal implements Sonoro {
  Cachorro(String nome) : super(nome);

  @override
  void emitirSom() {
    print("$nome: au au");
    print("==============================================");
  }
}

class Gato extends Animal implements Sonoro {
  Gato(String nome) : super(nome);

  @override
  void emitirSom() {
    print("$nome: miau");
    print("==============================================");
  }
}

class Passaro extends Animal implements Sonoro {
  Passaro(String nome) : super(nome);

  @override
  void emitirSom() {
    print("$nome: piu piu");
    print("==============================================");
  }
}

class Vaca extends Animal implements Sonoro {
  Vaca(String nome) : super(nome);

  @override
  void emitirSom() {
    print("$nome: muuu");
    print("==============================================");
  }
}

class Ovelha extends Animal implements Sonoro {
  Ovelha(String nome) : super(nome);

  @override
  void emitirSom() {
    print("$nome: beee");
    print("==============================================");
  }
}

void main() {
  ListaGenerica<Sonoro> animais = ListaGenerica<Sonoro>();

  Sonoro a1 = Cachorro("Rex");
  Sonoro a2 = Gato("Mimi");
  Sonoro a3 = Passaro("Piu");
  Sonoro a4 = Vaca("Mimosa");
  Sonoro a5 = Ovelha("Dolly");

  animais.adicionar(a1);
  animais.adicionar(a2);
  animais.adicionar(a3);
  animais.adicionar(a4);
  animais.adicionar(a5);

  print("=== Impressao dos Animais ===");
  animais.imprimirItens();

  print("\n=== Sons dos Animais ===");
  for (var animal in animais.obterItens()) {
    animal.emitirSom();
  }
}
