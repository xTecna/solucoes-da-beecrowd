using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static Dictionary<string, string[]> ganhaDe = new Dictionary<string, string[]>() {
        { "pedra", new string[] { "tesoura", "lagarto" } },
        { "papel", new string[] { "pedra", "spock" } },
        { "tesoura", new string[] { "papel", "lagarto" } },
        { "lagarto", new string[] { "papel", "spock" } },
        { "spock", new string[] { "pedra", "tesoura" } },
    };
    
    static void Main(string[] args) {
        int C = int.Parse(Console.ReadLine());
        for(int k = 0; k < C; ++k){
            string[] entrada = Console.ReadLine().Trim().Split(' ');
            
            if(entrada[0] == entrada[1]){
                Console.WriteLine("empate");
            }else if(ganhaDe[entrada[0]].Contains(entrada[1])){
                Console.WriteLine("rajesh");
            }else{
                Console.WriteLine("sheldon");
            }
        }
    }
}