import 'contato.dart';

class Agenda {

  List<Contato> _contatos;

  Agenda.vazia() : _contatos = [];

  Agenda.comContatos(this._contatos);

  adicionarContato(Contato contato) {
    _contatos.add(contato);
  }

  removerContatoPorNome(String nome) {
    _contatos.removeWhere((c) => c.nome == nome);
  }

  listarContatos() {
    for (var contato in _contatos) {
      contato.exibir();
    }
    print("=======================================");
  }

}
