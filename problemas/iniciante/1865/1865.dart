import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < n; i++) {
    List<String> entrada = stdin.readLineSync()!.split(' ');
    if (entrada[0] == "Thor") {
      print("Y");
    } else {
      print("N");
    }
  }
}
