import 'dart:ffi';

void main() {
  double n1 = 0;
  double n2 = 0;
  String caractere = "";

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
  
  double? calculo(double n1, double n2, String caractere){
    
    switch(caractere){
      case "-":
      return sub(n1, n2);

      case "+":
      return soma(n1, n2);

      case "*":
      return mut(n1, n2);

      case "/":
      return mut(n1, n2);

      default: print("nenhum numero digitado");

      
    }
  }


}