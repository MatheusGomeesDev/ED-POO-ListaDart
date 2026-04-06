import 'aluno.dart';

void main() {

  Aluno aluno1 = Aluno(ra: "2024001", nome: "Matheus", notaFinal: 8.5);
  Aluno aluno2 = Aluno(ra: "2024002", nome: "Ana", notaFinal: 5.0);
  Aluno aluno3 = Aluno(ra: "2024003", nome: "Lucas", notaFinal: 7.0);

  aluno1.exibirBoletim();
  aluno2.exibirBoletim();
  aluno3.exibirBoletim();

}
