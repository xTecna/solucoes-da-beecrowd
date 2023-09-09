using System;
using System.Linq;

class URI {
    static void Main(string[] args) { 
        int N = int.Parse(Console.ReadLine());
        for(int i = 0; i < N; ++i){
            string[] frase = Console.ReadLine().Trim().Split(' ');
            Console.WriteLine(String.Join("", frase.Where(x => x.Length > 0).Select(x => x[0])));
        }
    }
}