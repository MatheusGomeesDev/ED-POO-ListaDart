import 'endereco.dart';
import 'cliente.dart';

void main() {

  Cliente cliente1 = Cliente('Marina', Endereco('Rua A', 10, 'Curitiba'));
  Cliente cliente2 = Cliente.copia(cliente1);

  cliente2.endereco.alterarRua('Rua B');

  print('Cliente original:');
  cliente1.exibir();

  print('Cliente copiado:');
  cliente2.exibir();

}

// a) Por que a alteracao no endereco de um cliente nao modificou o endereco do outro?
// Porque no construtor Cliente.copia(), foi criado um novo objeto Endereco com os mesmos
// valores do endereco original. Cada cliente possui sua propria instancia de Endereco.

// b) O que foi feito nesse exercicio para evitar o compartilhamento da mesma referencia de Endereco?
// Foi feita uma copia manual (deep copy) no construtor Cliente.copia(). Em vez de copiar
// apenas a referencia do endereco (outro._endereco), foi criado um novo objeto Endereco
// usando os valores do endereco original.

// c) Qual e a diferenca entre copiar a referencia de um objeto e criar uma nova instancia com os mesmos dados?
// Copiar a referencia faz duas variaveis apontarem para o mesmo objeto na memoria,
// entao qualquer alteracao em uma afeta a outra. Criar uma nova instancia com os mesmos
// dados (deep copy) gera um objeto independente na heap, onde alteracoes em um
// nao impactam o outro.
