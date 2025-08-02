import 'dart:ffi';
import 'dart:io';

void main() {
  double n1 = 0;
  double n2 = 0;
  String caractere = "";
  double resultado = 0;

  double soma(double n1, double n2){
    return n1 + n2;
  }

  double div(double n1, double n2){
    return n1 / n2;
  }

  double mut(double n1, double n2){
    return n1 * n2;
  }
  
  double sub(double n1, double n2){
    return n1 - n2;
  }
  
  
  print("Digite o primeiro numero: ");
    n1 = double.parse(stdin.readLineSync()!);
    print("Digite o segundo numero: ");
    n2 = double.parse(stdin.readLineSync()!);
    print("Digite o operador: ");
    caractere = stdin.readLineSync()!;
    
    
    switch(caractere){
      case "-":
       resultado = sub(n1, n2);

      case "+":
       resultado = soma(n1, n2);

      case "*":
       resultado = mut(n1, n2);

      case "/":
       resultado = div(n1, n2);

      default: print("nenhum numero digitado");
    }

    print("O resultado é: $resultado");
}