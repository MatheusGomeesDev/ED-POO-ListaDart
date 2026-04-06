import 'caixa.dart';

alterarValor(Caixa c) {
  c.setValor(99);
}

trocarCaixa(Caixa c) {
  c = Caixa(999);
  c.exibir();
}

void main() {

  Caixa caixa = Caixa(10);

  print('Estado inicial:');
  caixa.exibir();

  alterarValor(caixa);
  print('Depois de alterarValor:');
  caixa.exibir();

  trocarCaixa(caixa);
  print('Depois de trocarCaixa:');
  caixa.exibir();

}
