import 'endereco.dart';

void main() {

  Endereco endereco1 = Endereco("Rua Pedro", 123, "Sao Joao", "Curitiba", "Parana", 82030000);
  endereco1.exibirEndereco();

  Endereco endereco2 = Endereco("Av Brasil", 456, "Centro", "Curitiba", "Parana", 80010000);
  endereco2.exibirEndereco();

  Endereco endereco3 = Endereco("Rua das Flores", 789, "Jardim Botanico", "Curitiba", "Parana", 80210000);
  endereco3.exibirEndereco();

}
