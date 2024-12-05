import 'dart:io';

void main() {
  int curupira = int.parse(stdin.readLineSync()!);
  int boitata = int.parse(stdin.readLineSync()!);
  int boto = int.parse(stdin.readLineSync()!);
  int mapinguari = int.parse(stdin.readLineSync()!);
  int iara = int.parse(stdin.readLineSync()!);

  print(225 +
      300 * curupira +
      1500 * boitata +
      600 * boto +
      1000 * mapinguari +
      150 * iara);
}
