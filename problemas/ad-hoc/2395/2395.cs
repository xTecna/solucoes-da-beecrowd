using System;
using System.Generic.Collections;
using System.Linq;

class URI {
    static void Main(string[] args) {
        List<int> conteiner = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
        List<int> navio = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();

        Console.WriteLine((navio[0] / conteiner[0]) * (navio[1] / conteiner[1]) * (navio[2] / conteiner[2]));
    }
}