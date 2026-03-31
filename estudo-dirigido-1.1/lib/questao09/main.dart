import 'pessoa.dart';
import 'endereco.dart';

void main() {

  Pessoa pessoa1 = Pessoa("Pedro", 19, "11111111111", Endereco("Rua Pedro", 123, "Sao Joao", "Curitiba", "Parana", 82030000));
  pessoa1.exibirPessoa();

  Pessoa pessoa2 = Pessoa("Eduardo", 19, "22222222222", Endereco("Av Brasil", 456, "Centro", "Curitiba", "Parana", 80010000));
  pessoa2.exibirPessoa();

  Pessoa pessoa3 = Pessoa("Guilherme", 19, "33333333333", Endereco("Rua das Flores", 789, "Jardim Botanico", "Curitiba", "Parana", 80210000));
  pessoa3.exibirPessoa();

}
