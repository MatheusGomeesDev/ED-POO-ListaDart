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

// a) Por que alterarValor() modifica o objeto original?
// O parametro c recebe uma copia da referencia que aponta para o mesmo objeto.
// Ao chamar c.setValor(99), estamos modificando o conteudo interno do objeto 

// b) Por que trocarCaixa() nao substitui a caixa criada no main?
// Pois dentro de trocarCaixa(), ao fazer c = Caixa(999), estamos apenas reatribuindo
// a variavel local c para apontar para um novo objeto. A variavel caixa no main continua
// apontando para o objeto original. A reatribuicao so afeta a copia local da referencia.

// c) O que esse resultado mostra sobre a diferenca entre alterar um objeto e reatribuir uma variavel de referencia?
// Alterar o conteudo de um objeto (via metodos) afeta o objeto original, pois todas as
// referencias apontam para o mesmo espaco na memoria. Ja reatribuir uma variavel de
// referencia (c = novoObjeto) so muda para onde aquela variavel local aponta, sem afetar
// as outras referencias que continuam apontando para o objeto anterior.
