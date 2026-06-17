abstract class Atacavel {
  void atacar(Personagem alvo);
}

abstract class Magico {
  void lancarMagia(Personagem alvo);
}

abstract class Flamejante {
  void soltarFogo(Personagem alvo);
}

abstract class Personagem {
  String nome;
  int vida;
  int nivel;

  Personagem(this.nome, this.vida, this.nivel) {
    if (nome.isEmpty) {
      throw ArgumentError('O nome nao pode ser vazio');
    }
    if (vida < 0) {
      throw ArgumentError('A vida nao pode ser negativa');
    }
    if (nivel < 1) {
      throw ArgumentError('O nivel deve ser maior ou igual a 1');
    }
  }

  receberDano(int dano) {
    vida -= dano;
    if (vida < 0) vida = 0;
  }

  bool estaVivo() {
    return vida > 0;
  }

  void exibirStatus();
}

abstract class Combatente extends Personagem implements Atacavel {
  int forca;

  Combatente(String nome, int vida, int nivel, this.forca) : super(nome, vida, nivel) {
    if (forca < 0) {
      throw ArgumentError('A forca nao pode ser negativa');
    }
  }
}

abstract class Inimigo extends Personagem {
  int recompensa;

  Inimigo(String nome, int vida, int nivel, this.recompensa) : super(nome, vida, nivel) {
    if (recompensa < 0) {
      throw ArgumentError('A recompensa nao pode ser negativa');
    }
  }

  exibirRecompensa() {
    print("Recompensa de $nome: $recompensa moedas");
  }
}

class Guerreiro extends Combatente {
  int armadura;

  Guerreiro(String nome, int vida, int nivel, int forca, this.armadura)
      : super(nome, vida, nivel, forca) {
    if (armadura < 0) {
      throw ArgumentError('A armadura nao pode ser negativa');
    }
  }

  @override
  void atacar(Personagem alvo) {
    print("$nome ataca ${alvo.nome} causando $forca de dano!");
    alvo.receberDano(forca);
  }

  atacarPesado(Personagem alvo) {
    int dano = forca * 2;
    print("$nome usa ataque pesado em ${alvo.nome} causando $dano de dano!");
    alvo.receberDano(dano);
  }

  @override
  void exibirStatus() {
    print("Tipo: Guerreiro");
    print("Nome: $nome");
    print("Vida: $vida");
    print("Nivel: $nivel");
    print("Forca: $forca");
    print("Armadura: $armadura");
    print("Vivo: ${estaVivo()}");
    print("==============================================");
  }
}

class Arqueiro extends Combatente {
  int flechas;

  Arqueiro(String nome, int vida, int nivel, int forca, this.flechas)
      : super(nome, vida, nivel, forca) {
    if (flechas < 0) {
      throw ArgumentError('A quantidade de flechas nao pode ser negativa');
    }
  }

  @override
  void atacar(Personagem alvo) {
    if (flechas <= 0) {
      print("$nome nao pode atacar: sem flechas!");
      return;
    }
    flechas--;
    print("$nome atira uma flecha em ${alvo.nome} causando $forca de dano!");
    alvo.receberDano(forca);
  }

  @override
  void exibirStatus() {
    print("Tipo: Arqueiro");
    print("Nome: $nome");
    print("Vida: $vida");
    print("Nivel: $nivel");
    print("Forca: $forca");
    print("Flechas: $flechas");
    print("Vivo: ${estaVivo()}");
    print("==============================================");
  }
}

class Mago extends Combatente implements Magico {
  int mana;

  Mago(String nome, int vida, int nivel, int forca, this.mana)
      : super(nome, vida, nivel, forca) {
    if (mana < 0) {
      throw ArgumentError('A mana nao pode ser negativa');
    }
  }

  @override
  void atacar(Personagem alvo) {
    print("$nome ataca ${alvo.nome} causando $forca de dano!");
    alvo.receberDano(forca);
  }

  @override
  void lancarMagia(Personagem alvo) {
    if (mana < 10) {
      print("$nome nao pode lancar magia: mana insuficiente!");
      return;
    }
    int dano = forca + 15;
    mana -= 10;
    print("$nome lanca magia em ${alvo.nome} causando $dano de dano!");
    alvo.receberDano(dano);
  }

  @override
  void exibirStatus() {
    print("Tipo: Mago");
    print("Nome: $nome");
    print("Vida: $vida");
    print("Nivel: $nivel");
    print("Forca: $forca");
    print("Mana: $mana");
    print("Vivo: ${estaVivo()}");
    print("==============================================");
  }
}

class Goblin extends Inimigo {
  int velocidade;

  Goblin(String nome, int vida, int nivel, int recompensa, this.velocidade)
      : super(nome, vida, nivel, recompensa) {
    if (velocidade < 0) {
      throw ArgumentError('A velocidade nao pode ser negativa');
    }
  }

  @override
  void exibirStatus() {
    print("Tipo: Goblin");
    print("Nome: $nome");
    print("Vida: $vida");
    print("Nivel: $nivel");
    print("Velocidade: $velocidade");
    print("Vivo: ${estaVivo()}");
    print("==============================================");
  }
}

class Dragao extends Inimigo implements Flamejante {
  int poderDeFogo;

  Dragao(String nome, int vida, int nivel, int recompensa, this.poderDeFogo)
      : super(nome, vida, nivel, recompensa) {
    if (poderDeFogo < 0) {
      throw ArgumentError('O poder de fogo nao pode ser negativo');
    }
  }

  @override
  void soltarFogo(Personagem alvo) {
    print("$nome solta fogo em ${alvo.nome} causando $poderDeFogo de dano!");
    alvo.receberDano(poderDeFogo);
  }

  @override
  void exibirStatus() {
    print("Tipo: Dragao");
    print("Nome: $nome");
    print("Vida: $vida");
    print("Nivel: $nivel");
    print("Poder de Fogo: $poderDeFogo");
    print("Vivo: ${estaVivo()}");
    print("==============================================");
  }
}

void main() {
  Guerreiro thoran = Guerreiro("Thoran", 120, 5, 20, 15);
  Arqueiro lia = Arqueiro("Lia", 80, 4, 15, 10);
  Mago merlin = Mago("Merlin", 70, 6, 10, 50);
  Goblin gob = Goblin("Gob", 40, 2, 100, 25);
  Dragao ignis = Dragao("Ignis", 200, 10, 1000, 35);

  print("=== Acoes de Combate ===");
  thoran.atacar(gob);
  lia.atacar(gob);
  merlin.lancarMagia(ignis);
  ignis.soltarFogo(thoran);

  print("\n=== Status Final ===");
  thoran.exibirStatus();
  lia.exibirStatus();
  merlin.exibirStatus();
  gob.exibirStatus();
  ignis.exibirStatus();

  print("=== Inimigos Derrotados ===");
  if (!gob.estaVivo()) gob.exibirRecompensa();
  if (!ignis.estaVivo()) ignis.exibirRecompensa();
}
