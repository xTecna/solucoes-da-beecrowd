import 'dart:io';

void main()
{
    double a = double.parse(stdin.readLineSync()!);
    double b = double.parse(stdin.readLineSync()!);
    double c = double.parse(stdin.readLineSync()!);

    print("MEDIA = ${((2 * a + 3 * b + 5 * c)/10).toStringAsFixed(1)}");
}