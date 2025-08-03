import 'dart:io';

void main(List<String> args) {

  void idadeParaDirigir(){
    print("Digite a sua idade: ");
    int idade = int.parse(stdin.readLineSync()!);

    switch(idade){
    case < 18:
      print("Não pode dirir ainda.");
    case >= 18:
      print("Pode dirigir!");
    }
  }
  
  void retornandoMesesDoAno(){

    print("Digite o numero do mês de 1 a 12:");
    int mes = int.parse(stdin.readLineSync()!);

    switch(mes){
      case 1:
      print("Janeiro");

      case 2:
      print("Fevereiro");

      case 3:
      print("Março");
      
      case 4:
      print("Abril");
      
      case 5:
      print("Maio");
      
      case 6:
      print("Junho");
      
      case 7:
      print("Julho");
      
      case 8:
      print("Agosto");
      
      case 9:
      print("Setembro");
      
      case 10:
      print("Outubro");
      
      case 11:
      print("Novembro");
      
      case 12:
      print("Dezembro");
    }
  }

  void verificaSaldo(){
    double saldo = 1000.0; // Saldo inicial em reais

    print('Boas-vindas ao seu banco digital!');
    print('Seu saldo atual é de: R\$${saldo.toStringAsFixed(2)}');

    print('Digite o valor do Pix que deseja realizar:');
    double valorPix = double.parse(stdin.readLineSync()!);

    if(valorPix <= saldo) saldo = saldo - valorPix;
    else print("Saldo insuficiente");

    print("Seu saldo agora é de $saldo");
    
  }

  void idadeParaDirigirDeCadaPais(){
    print("Digite a sua idade: ");
    int idade = int.parse(stdin.readLineSync()!);
    
    print("Digite seu pais: ");
    String? pais = stdin.readLineSync();

    switch(pais){
    case "Brasil":
      switch(idade){
        case < 18:
        print("Não pode dirir ainda.");
        case >= 18:
        print("Pode dirigir!");
      }

    case "EUA":
      switch(idade){
        case < 16:
        print("Não pode dirir ainda.");
        case >= 16:
        print("Pode dirigir!");
      }

    case "Japão":
      switch(idade){
        case < 20:
        print("Não pode dirir ainda.");
        case >= 20:
        print("Pode dirigir!");
      }
    }
  }


  idadeParaDirigirDeCadaPais();
}