using System;

class URI {
    static void Main(string[] args) {
        string[] CPF = Console.ReadLine().Trim().Split(new char[] {'.', '-'});
        foreach (var trecho in CPF){
            Console.WriteLine(trecho);
        }
    }
}