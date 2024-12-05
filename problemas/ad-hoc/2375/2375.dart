import 'dart:io';

void main()
{
	int diametro = int.parse(stdin.readLineSync()!);
	List<int> entrada =
        stdin.readLineSync()!.split(' ').map((x) => int.parse(x)).toList();
	int altura = entrada[0];
	int largura = entrada[1];
	int profundidade = entrada[2];

	if (diametro <= altura && diametro <= largura && diametro <= profundidade) {
		print("S");
	} else {
		print("N");
	}
}