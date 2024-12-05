import 'dart:io';

int somaPA(int a1, int an, int n)
{
	return ((n * (a1 + an)) / 2).floor();
}

void main()
{
	int t = int.parse(stdin.readLineSync()!);
	
	for (int i = 0; i < t; ++i) {
		int n = int.parse(stdin.readLineSync()!);
		print(somaPA(1, n, n) + 1);
	}
}