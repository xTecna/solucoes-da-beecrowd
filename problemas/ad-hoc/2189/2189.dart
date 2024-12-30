import 'dart:io';

void main()
{
	int k = 1;
	while (true)
	{
		int n = int.parse(stdin.readLineSync()!);

		if (n == 0)
		{
			break;
		}

		List<int> numeros =
			stdin.readLineSync()!.split(' ').map((x) => int.parse(x)).toList();

		int resposta = -1;
		for(int i = 0; i < n; ++i) {
			if (numeros[i] == i + 1) {
				resposta = i + 1;
			}
		}

		print("Teste ${k}");
		print(resposta);
		print("");

		k += 1;
	}
}