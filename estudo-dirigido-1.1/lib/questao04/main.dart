import 'lampada.dart';

void main() {

  Lampada lampada = Lampada(true, 0, false);

  for(int i = 0; i < 6; i++) {

    lampada.desligarLampada();
    lampada.ligarLampada();
  }

  lampada.exibirEstado();

}
