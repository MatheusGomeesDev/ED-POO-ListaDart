import 'funcionario.dart';

void main() {

  Funcionario f1 = Funcionario.estagiario('Joao');
  Funcionario f2 = Funcionario.pleno('Larissa', 3500);
  Funcionario f3 = Funcionario.gerente(nome: 'Carlos', bonus: 1500);

  f1.exibirDados();
  f2.exibirDados();
  f3.exibirDados();

}

// a) Qual e a vantagem de usar construtores nomeados nesse caso?
// Deixam o codigo mais legivel e expressivo. Em vez de um unico
// construtor com muitos parametros opcionais, cada construtor nomeado representa um
// perfil especifico, tornando claro qual tipo de funcionario 
// esta sendo criado e quais valores padrao se aplicam.

// b) O que muda no estado inicial de cada objeto conforme o construtor utilizado?
// Cada construtor define valores padrao diferentes. O estagiario tem cargo "Estagiario"
// e salario fixo baixo. O pleno tem cargo "Pleno" e salario informado pelo usuario.
// O gerente tem cargo "Gerente" e recebe um bonus adicional ao salario. Assim, o estado
// inicial do objeto varia conforme o construtor escolhido.

// c) Por que pode ser melhor definir o cargo ja no construtor em vez de usar metodos separados?
// Porque o construtor garante que o objeto ja nasce em um estado valido e consistente.
// Se o cargo fosse definido depois por um metodo, haveria um momento em que o objeto
// existiria sem cargo definido, o que poderia causar erros. O construtor evita esse
// estado intermediario invalido, aplicando o principio de encapsulamento e consistencia.
