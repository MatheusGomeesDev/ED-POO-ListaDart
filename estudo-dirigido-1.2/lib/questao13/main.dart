import 'carteira.dart';
import 'pessoa.dart';

void main() {

  Pessoa? p1 = Pessoa('Lucas', Carteira(100));
  Pessoa? p2 = p1;

  print('Estado inicial:');
  p1!.exibir();
  p2!.exibir();

  p2.carteira.adicionar(50);

  print('\nDepois de alterar a carteira por p2:');
  p1.exibir();
  p2.exibir();

  p1 = null;
  print('\nDepois de p1 = null:');
  print('p1: $p1');
  p2.exibir();

  p2 = null;
  print('\nDepois de p2 = null:');
  print('p2: $p2');

}

// a) Por que a alteracao feita na carteira por p2 tambem apareceu quando o objeto foi acessado por p1?
// Porque p1 e p2 sao referencias para o mesmo objeto Pessoa na memoria. Como ambas
// apontam para o mesmo objeto, e esse objeto contem a mesma Carteira, qualquer alteracao
// feita atraves de p2 tambem e visivel por p1.

// b) Em termos conceituais, as variaveis p1 e p2 armazenam o objeto inteiro ou uma referencia para ele?
// Armazenam apenas uma referencia para o objeto. O objeto em si fica
// armazenado na heap, e as variaveis na stack guardam apenas o ponteiro para ele.

// c) Onde ficam as variaveis locais e onde ficam os objetos criados dinamicamente?
// As variaveis locais ficam na stack. Os objetos criados
// dinamicamente ficam na heap. A stack armazena
// as referencias, e a heap armazena os dados reais dos objetos.

// d) Em que momento os objetos Pessoa e Carteira passam a ficar elegiveis para o garbage collector?
// Quando nenhuma referencia aponta mais para eles. Ao fazer p1 = null, o objeto ainda
// tem p2 apontando, entao nao e coletado. Quando p2 = null, nenhuma variavel mais
// referencia o objeto Pessoa, entao ambos ficam
// elegiveis para o garbage collector.
