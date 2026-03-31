import 'endereco.dart';

class Pessoa {
  String _nome;
  int _idade;
  String _cpf;
  Endereco _endereco;

  Pessoa(this._nome, this._idade, this._cpf, this._endereco) {
    if(_nome.isEmpty) {
      throw ArgumentError('O nome nao pode ser nulo');
    }
    if(_idade < 0) {
      throw ArgumentError('A idade deve ser maior que zero');
    }
    if(_cpf.isEmpty) {
      throw ArgumentError('O cpf nao pode ser nulo');
    }
  }

  exibirPessoa() {
    print("Nome: $_nome");
    print("Idade: $_idade");
    print("Cpf: $_cpf");
    _endereco.exibirEndereco();
  }

}
