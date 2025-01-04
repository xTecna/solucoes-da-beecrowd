using System;

class URI {
    static void Main(string[] args) {
        int B = int.Parse(Console.ReadLine());
        int T = int.Parse(Console.ReadLine());

        if (B + T > 160) {
            Console.WriteLine(1);
        } else if (B + T < 160) {
            Console.WriteLine(2);
        } else {
            Console.WriteLine(0);
        }
    }
}