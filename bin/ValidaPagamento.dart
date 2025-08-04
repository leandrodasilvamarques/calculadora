import 'dart:io';
void main() {
  List<String> metodosDePagamento = <String>["cartao", "boleto", "paypal", "pix"];

  String validaEntrada(){

  print("Digite o metodo de pagamento: ");
  String entrada = stdin.readLineSync()!;
    if(entrada == null || entrada == "" || !metodosDePagamento.contains(entrada)){
      print("Metodo de pagamento invalido, tente novamente!");
      return validaEntrada();
    } else{return entrada;}
  }

  String metodo = validaEntrada();

  switch(metodo){
    case "cartao":
    print("Pago com o cartão.");

    case "boleto":
    print("Pago com o boleto.");

    case "paypal":
    print("Pago com o paypal.");

    case "pix":
    print("Pago com o pix.");
  }



}