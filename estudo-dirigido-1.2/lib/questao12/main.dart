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

// a) Qual e a diferenca pratica entre criar uma agenda vazia e criar uma agenda ja com contatos?
// A agenda vazia inicia com uma lista interna vazia, sem nenhum contato.
// Os contatos precisam ser adicionados depois com adicionarContato(). Ja a agenda com
// contatos recebe uma lista pronta de contatos no momento da criacao,
// permitindo que o objeto ja comece populado.

// b) Quando uma lista de objetos e passada para o construtor, os contatos sao recriados ou a agenda passa a usar as referencias recebidas?
// A agenda passa a usar as mesmas referencias recebidas. 
// Isso significa que se alguem modificar um Contato externamente, a alteracao
// tambem sera visivel dentro da agenda, pois ambos apontam para os mesmos objetos na memoria.
