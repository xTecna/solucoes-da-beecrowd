import 'dart:io';

void main()
{
	int n = int.parse(stdin.readLineSync()!);
	List<int> entrada =
        stdin.readLineSync()!.split(' ').map((x) => int.parse(x, radix: 16)).toList();

	String resposta = "";
	for (int i = 0; i < n; ++i) {
		resposta += String.fromCharCode(entrada[i]);
	}
	print(resposta);
}