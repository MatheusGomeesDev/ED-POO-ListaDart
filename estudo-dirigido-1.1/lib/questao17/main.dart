import 'semaforo.dart';

void main() {

  Semaforo semaforo = Semaforo("vermelho", 5);

  for(int i = 0; i < 15; i++) {
    semaforo.exibirEstado();
    semaforo.reduzirTempo();
  }

}
