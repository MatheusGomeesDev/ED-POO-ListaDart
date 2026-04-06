import 'contato.dart';
import 'agenda.dart';

void main() {

  Agenda agenda1 = Agenda.vazia();
  agenda1.adicionarContato(Contato('Ana', '1111-1111'));

  Agenda agenda2 = Agenda.comContatos([
    Contato('Bruno', '2222-2222'),
    Contato('Clara', '3333-3333'),
  ]);

  print('Agenda 1:');
  agenda1.listarContatos();

  print('Agenda 2:');
  agenda2.listarContatos();

}
