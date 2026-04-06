import 'funcionario.dart';

void main() {

  Funcionario f1 = Funcionario.estagiario('Joao');
  Funcionario f2 = Funcionario.pleno('Larissa', 3500);
  Funcionario f3 = Funcionario.gerente(nome: 'Carlos', bonus: 1500);

  f1.exibirDados();
  f2.exibirDados();
  f3.exibirDados();

}
