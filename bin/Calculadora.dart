import 'dart:ffi';
import 'dart:io';

void main() {
  double n1 = 0;
  double n2 = 0;
  String caractere = "";
  double resultado = 0;
  List <String> listaDeOperacoes = <String>["+", "-", "*", "/"];

  double soma(double n1, double n2){return n1 + n2;}

  double div(double n1, double n2){return n1 / n2;}

  double mut(double n1, double n2){return n1 * n2;}
  
  double sub(double n1, double n2){return n1 - n2;}
  
  double ifDoubleNullOrVazio() {
    print("Digite o numero: ");
    double numero = double.parse(stdin.readLineSync()!);

    if (numero != null && numero != "") return numero;
    else{
      print("Valor invalido, tente novamente!");
      return ifDoubleNullOrVazio();
    }
  }

  String ifStringfNullOrVazio() {
    print("Digite um operador ${listaDeOperacoes.toString()}: ");
    String entradaAVerificar = stdin.readLineSync()!;

    if (entradaAVerificar != null && entradaAVerificar != "" && listaDeOperacoes.contains(entradaAVerificar)) {return entradaAVerificar;}
    else {
      print("Operação invalida");
      return ifStringfNullOrVazio();
      }
  }

  n1 = ifDoubleNullOrVazio();
  caractere = ifStringfNullOrVazio();
  n2 = ifDoubleNullOrVazio();
  
  switch(caractere){
    case "-":
      resultado = sub(n1, n2);

    case "+":
      resultado = soma(n1, n2);

    case "*":
      resultado = mut(n1, n2);

    case "/":
      resultado = div(n1, n2);

    default: print("nenhuma operação digitada");
  }

  print("O resultado de $n1 $caractere $n2 = $resultado");
}