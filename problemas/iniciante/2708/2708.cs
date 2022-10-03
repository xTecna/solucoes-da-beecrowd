using System;

class URI {
    static void Main(string[] args) {
        int jipes, pessoas;

        jipes = pessoas = 0;
        string[] entrada = Console.ReadLine().Split(' ');
        while(entrada[0] != "ABEND"){
            if(entrada[0] == "SALIDA"){
                pessoas += int.Parse(entrada[1]);
                ++jipes;
            }else{
                pessoas -= int.Parse(entrada[1]);
                --jipes;
            }

            entrada = Console.ReadLine().Split(' ');
        }

        Console.WriteLine(pessoas);
        Console.WriteLine(jipes);
    }
}