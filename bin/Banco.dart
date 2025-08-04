import 'dart:io';
void main() {
  double saldo = 1000;
  List<String> operacoes = <String>["deposito", "saque", "transferencia", "pagamento"];

  void deposito(){
    print("Valor: ");
    double quantia = double.parse(stdin.readLineSync()!);

    if(quantia > 0){
      saldo = quantia + saldo;
    }else {
      print("Valor invalido, tente novamente!");
      deposito();
      }
  }

  String recebeOperacao(){
    print("Digite a operação desejada ${operacoes.toString()}");
    String operacao = stdin.readLineSync()!;
    if(operacoes.contains(operacao)){return operacao;}
    else {
      print("Operação invalida, tente novamente!");
      return recebeOperacao();
    }

  }
  
  String operacao = recebeOperacao();
  
  switch(operacao){
    case "deposito":
      deposito();
  }

  print("Saldo $saldo");
}