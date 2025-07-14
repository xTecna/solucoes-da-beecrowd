import 'dart:io';
import 'dart:math';

void main() {
  Map<String, Map<String, int>> regras = {
    "R": {"G": 2, "B": 1},
    "G": {"R": 1, "B": 2},
    "B": {"R": 2, "G": 1}
  };
  int c = int.parse(stdin.readLineSync()!);
  for (int k = 0; k < c; ++k) {
    int p = int.parse(stdin.readLineSync()!);

    Map<String, int> pontos = {"R": 0, "G": 0, "B": 0};
    for (int i = 0; i < p; ++i) {
      List<String> entrada = stdin.readLineSync()!.split(' ');
      String time1 = entrada[0];
      String time2 = entrada[1];

      pontos[time1] = pontos[time1]! + regras[time1]![time2]!;
    }

    if (pontos["R"] == pontos["G"] && pontos["G"] == pontos["B"]) {
      print("trempate");
    } else if (pontos["R"]! > pontos["G"]! && pontos["R"]! > pontos["B"]!) {
      print("red");
    } else if (pontos["G"]! > pontos["R"]! && pontos["G"]! > pontos["B"]!) {
      print("green");
    } else if (pontos["B"]! > pontos["R"]! && pontos["B"]! > pontos["G"]!) {
      print("blue");
    } else {
      print("empate");
    }
  }
}
