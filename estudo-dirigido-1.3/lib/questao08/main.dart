import 'cupom_desconto.dart';

void main() {

  CupomDesconto cupom = CupomDesconto("DESC10", 10.0, true);

  cupom.codigo = "DESC15";
  cupom.percentual = 15.0;

  double valor = 500.0;
  double desconto = cupom.calcularDesconto(valor);

  print("Valor original: R\$ ${valor.toStringAsFixed(2)}");
  print("Desconto: R\$ ${desconto.toStringAsFixed(2)}");
  print("Valor final: R\$ ${(valor - desconto).toStringAsFixed(2)}");
  print("");

  cupom.exibirCupom();

}
