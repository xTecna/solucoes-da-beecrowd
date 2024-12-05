import 'dart:io';

void main()
{
	List<int> entrada =
        stdin.readLineSync()!.split(' ').map((x) => int.parse(x)).toList();
	int L = entrada[0];
	int D = entrada[1];

	entrada =
        stdin.readLineSync()!.split(' ').map((x) => int.parse(x)).toList();
	int K = entrada[0];
	int P = entrada[1];

	print(K * L + P * (L / D).floor());
}