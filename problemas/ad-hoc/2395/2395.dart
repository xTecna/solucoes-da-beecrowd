import 'dart:io';

void main() {
  List<int> conteiner =
      stdin.readLineSync()!.split(' ').map((x) => int.parse(x)).toList();
  List<int> navio =
      stdin.readLineSync()!.split(' ').map((x) => int.parse(x)).toList();

  print((navio[0] / conteiner[0]).floor() *
      (navio[1] / conteiner[1]).floor() *
      (navio[2] / conteiner[2]).floor());
}
