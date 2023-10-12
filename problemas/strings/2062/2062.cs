using System;

class URI {
    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());
        string[] palavras = Console.ReadLine().Trim().Split(' ');

        for(int i = 0; i < N; ++i){
            if(palavras[i].Length == 3){
                if(palavras[i].StartsWith("OB")){
                    palavras[i] = "OBI";
                }else if(palavras[i].StartsWith("UR")){
                    palavras[i] = "URI";
                }
            }
        }

        Console.WriteLine(string.Join(" ", palavras));
    }
}