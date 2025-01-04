using System;

class URI {
    static void Main(string[] args) {
        int teste = 1;
        while (true) {
            int n = int.Parse(Console.ReadLine());
            if (n == -1) {
                break;
            }

            Console.WriteLine($"Experiment {teste}: {n / 2} full cycle(s)");
            teste += 1;
        }
    }
}