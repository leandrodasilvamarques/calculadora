import 'dart:ffi';
import 'dart:io';

void main() {

  

  void duplicaNumero(){
    double n1 = double.parse(stdin.readLineSync()!);
    print(n1 * 2);
  }

  void media(){
    print("primeira idade: ");
    double n1 = double.parse(stdin.readLineSync()!);

    print("segunda idade: ");
    double n2 = double.parse(stdin.readLineSync()!);

    print("terceira idade: ");
    double n3 = double.parse(stdin.readLineSync()!);

    print("A media da idade é: ${(n1 + n2 + n3) / 3}");
  }

  void fichaDeParticipantes(){
    
    print("nome: ");
    String? nome = stdin.readLineSync();

    print("cpf: ");
    String? cpf = stdin.readLineSync();

    print("participa da comunidade: ");
    String? participoDaComunidade = stdin.readLineSync();

    print("idade: ");
    String? idade = stdin.readLineSync();

    print("altura: ");
    String? altura = stdin.readLineSync();
    

    print("\nEu sou $nome,\n meu CPf é: $cpf,\n sou membro da comunidade: $participoDaComunidade.\n Eu tenho $altura metros de altura e $idade anos de idade.");
  }

  void calculaSalarioDoFrella(){
    print("Digite suas horas trabalhadas: ");
    double horasTrabalhadas = double.parse(stdin.readLineSync()!);
    double salario = horasTrabalhadas * 50;

    double desconto = salario - salario * 0.05;
    print("O salario liquido é: $desconto");
  }

  void calculaCupom(){
  print("Quanto gastou no mercado: ");
  double gasto = double.parse(stdin.readLineSync()!);

  int cupons = (gasto / 50).floor();

  if (cupons <= 1) print("Você gastou $gasto e recebeu $cupons cupom.");
  else print("Você gastou $gasto e recebeu $cupons cupons.");
  }

  calculaCupom();
}
