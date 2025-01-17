import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!)!;

  RegExp regex = RegExp(r'a+');
  for (int i = 0; i < n; ++i) {
    String hamekame = stdin.readLineSync()!;
    
    Iterable<RegExpMatch> matches = regex.allMatches(hamekame);
    
    int tamanho1 = matches.first.group(0)!.length;
    int tamanho2 = matches.last.group(0)!.length;

	String resposta = "k";
	for (int j = 0; j < tamanho1 * tamanho2; ++j) {
		resposta += "a";
	}
	print(resposta);
  }
}
