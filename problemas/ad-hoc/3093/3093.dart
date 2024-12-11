import 'dart:io';

void main() {
	int n = int.parse(stdin.readLineSync()!);
	
	for(int i = 0; i < n; ++i) {
		String cartas = stdin.readLineSync()!;

		if (cartas.contains("A") && cartas.contains("K") && cartas.contains("Q") && cartas.contains("J")) {
			print("Aaah muleke");
		} else {
			print("Ooo raca viu");
		}
	}
}
