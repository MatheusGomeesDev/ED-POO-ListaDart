import 'lampada.dart';

void main() {

  Lampada lampada = Lampada();

  lampada.exibirEstado();

  lampada.ligar();
  lampada.aumentar();
  lampada.aumentar();
  lampada.exibirEstado();

  lampada.diminuir();
  lampada.exibirEstado();

  lampada.desligar();
  lampada.exibirEstado();

}
