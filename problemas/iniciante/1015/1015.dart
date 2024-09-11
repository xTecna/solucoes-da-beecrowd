import 'dart:io';
import 'dart:math';

void main()
{
    List<String> entrada = stdin.readLineSync()!.split(' ');
    double x1 = double.parse(entrada[0]);
    double y1 = double.parse(entrada[1]);
    entrada = stdin.readLineSync()!.split(' ');
    double x2 = double.parse(entrada[0]);
    double y2 = double.parse(entrada[1]);

    print((sqrt((x2 - x1) * (x2 - x1) + (y2 - y1) * (y2 - y1))).toStringAsFixed(4));
}