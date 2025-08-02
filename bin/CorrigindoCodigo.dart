import 'dart:io';
void main(List<String> args) {
  
  void pix(){
  double saldo = 1000.0; // Saldo inicial em reais

    print('Boas-vindas ao seu banco digital!');
    print('Seu saldo atual é de: R\$${saldo.toStringAsFixed(2)}');

    print('Digite o valor do Pix que deseja realizar:');
    double valorPix = double.parse(stdin.readLineSync()!);

    saldo -= valorPix;

    print('Pix realizado com sucesso!');
    print('Seu saldo atual é de: R\$${saldo.toStringAsFixed(2)}');
  }


  double pontosRestantes(double pontosIniciais, double pontosResgatados){
    return pontosIniciais - pontosResgatados;
  }

  void pontos(){

  double pontosIniciais = 100;

  print("Você tem $pontosIniciais pontos.");
  print("Quantos pontos você gostaria de resgatar?");
  double pontosResgatados = double.parse(stdin.readLineSync()!);

  double pontosAtuais = pontosRestantes(pontosResgatados, pontosIniciais);

  print("Você resgatou $pontosResgatados pontos. Pontos restantes: $pontosAtuais.");
  }

  pontos();
}

