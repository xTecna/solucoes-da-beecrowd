import 'dart:io';

void main() {
  while(true) {
    int n = int.parse(stdin.readLineSync()!);
  	if (n == 0) {
  	  break;
  	}
  	
  	String resposta = "";
  	int menor_ano = 9999;
  	for (int i = 0; i < n; ++i) {
      List<String> entrada = stdin.readLineSync()!.split(' ');
      String planeta = entrada[0];
      int ano = int.parse(entrada[1]);
      int tempo = int.parse(entrada[2]);
    
      if (ano - tempo < menor_ano) {
        resposta = planeta;
        menor_ano = ano - tempo;
      }
    }
	
	  print(resposta);
  }
}
