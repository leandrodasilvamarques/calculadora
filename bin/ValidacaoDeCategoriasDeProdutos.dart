import 'dart:io';
void main() {
  List<String> listaDeCategoria = <String>["Eletronicos","Alimentos","Vestuario","Livros",];

  String validaEntrada(String entrada){
    if(listaDeCategoria.contains(entrada)) {return "Contém";}
    else {return "Não contém";}
  }

  print("Qual a categoria do produto?");
  String produto = stdin.readLineSync()!;

  print(validaEntrada(produto));

}