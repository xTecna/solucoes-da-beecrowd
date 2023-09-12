using System;

class URI {
    static void Main(string[] args) {
        string entrada;
        
        int pessoas = 0;
        double media = 0.0;
        while((entrada = Console.ReadLine()) != null){
            media += int.Parse(Console.ReadLine());
            pessoas += 1;
        }
        
        media /= pessoas;
        Console.WriteLine($"{media:N1}");
    }
}