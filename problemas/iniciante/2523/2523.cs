using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        string lampadas;

        while((lampadas = Console.ReadLine()) != null){
            int N = int.Parse(Console.ReadLine());
            char[] letras = Console.ReadLine().Trim().Split(' ').Select(x => lampadas[int.Parse(x) - 1]).ToArray();
            Console.WriteLine(new string(letras));
        }
    }
}