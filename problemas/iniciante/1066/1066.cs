using System; 

class URI {
    static void Main(string[] args) {
        int impares = 0, positivos = 0, negativos = 0;

        for(int i = 0; i < 5; ++i){
            int x = Int32.Parse(Console.ReadLine().Trim());

            impares += ((x > 0 ? x : -x) % 2);

            if(x > 0)       ++positivos;
            else if(x < 0)  ++negativos;
        }

        Console.Write($"{5 - impares} valor(es) par(es)\n");
        Console.Write($"{impares} valor(es) impar(es)\n");
        Console.Write($"{positivos} valor(es) positivo(s)\n");
        Console.Write($"{negativos} valor(es) negativo(s)\n");
    }
}