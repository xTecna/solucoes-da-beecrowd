import 'dart:io';

void main() {
  int inter = 0;
  int gremio = 0;
  int empate = 0;
  while (true) {
    List<int> entrada = stdin
        .readLineSync()!
        .trim()
        .split(' ')
        .map((x) => int.parse(x))
        .toList();
    int i = entrada[0];
    int g = entrada[1];

    if (i < g) {
      gremio += 1;
    } else if (i == g) {
      empate += 1;
    } else {
      inter += 1;
    }

    int codigo = 0;
    while (codigo != 1 && codigo != 2) {
      print('Novo grenal (1-sim 2-nao)');
      codigo = int.parse(stdin.readLineSync()!);
    }

    if (codigo == 2) {
      break;
    }
  }

  print('${inter + gremio + empate} grenais');
  print('Inter:${inter}');
  print('Gremio:${gremio}');
  print('Empates:${empate}');

  if (inter > gremio && inter > empate) {
    print('Inter venceu mais');
  } else if (gremio > inter && gremio > empate) {
    print('Gremio venceu mais');
  } else {
    print('Nao houve vencedor');
  }
}
