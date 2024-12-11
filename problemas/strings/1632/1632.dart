import 'dart:io';

int variacoes(String letra) {
	if (letra == 'A' || letra == 'E' || letra == 'I' || letra == 'O' || letra == 'S') {
		return 3;
	} else {
		return 2;
	}
}

void main() {
	int n = int.parse(stdin.readLineSync()!)!;
	for(int i = 0; i < n; ++i) {
		String senha = stdin.readLineSync()!.toUpperCase();
		
		int resposta = 1;
		for(int j = 0; j < senha.length; ++j) {
			resposta *= variacoes(senha[j]);
		}
		
		print(resposta);
	}
}
