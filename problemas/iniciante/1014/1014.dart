import 'dart:io';

void main()
{
    int x = int.parse(stdin.readLineSync()!);
    double y = double.parse(stdin.readLineSync()!);

    print("${(x/y).toStringAsFixed(3)} km/l");
}