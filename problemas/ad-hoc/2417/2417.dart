import 'dart:io';

void main() {
  List<int> entrada =
      stdin.readLineSync()!.split(' ').map((x) => int.parse(x)).toList();
  int cv = entrada[0];
  int ce = entrada[1];
  int cs = entrada[2];
  int fv = entrada[3];
  int fe = entrada[4];
  int fs = entrada[5];

  int cp = 10000 * (3 * cv + ce) + cs;
  int fp = 10000 * (3 * fv + fe) + fs;

  if (cp > fp) {
    print("C");
  } else if (fp > cp) {
    print("F");
  } else {
    print("=");
  }
}
