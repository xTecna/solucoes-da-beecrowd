using System;

class URI {
    static void Main(string[] args) {
        string[] PR = Console.ReadLine().Trim().Split(' ');
        int P = int.Parse(PR[0]);
        int R = int.Parse(PR[1]);
        
        Console.WriteLine(P == 1 ? (R == 1 ? 'A' : 'B') : 'C');
    }
}