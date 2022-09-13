using System;

class URI {
    static bool ganhou(string jogada1, string jogada2){
        return (jogada1 == "pedra" && jogada2 == "tesoura") || (jogada1 == "tesoura" && jogada2 == "papel") || (jogada1 == "papel" && jogada2 == "pedra");
    }

    static void Main(string[] args) {
        string entrada;

        while((entrada = Console.ReadLine()) != null){
            string[] jogadas = entrada.Trim().Split(' ');
            string dodo = jogadas[0];
            string leo = jogadas[1];
            string pepper = jogadas[2];

            if (ganhou(dodo, leo) && ganhou(dodo, pepper))
            {
                Console.WriteLine("Os atributos dos monstros vao ser inteligencia, sabedoria...");
            }
            else if (ganhou(leo, dodo) && ganhou(leo, pepper))
            {
                Console.WriteLine("Iron Maiden's gonna get you, no matter how far!");
            }
            else if (ganhou(pepper, dodo) && ganhou(pepper, leo))
            {
                Console.WriteLine("Urano perdeu algo muito precioso...");
            }
            else
            {
                Console.WriteLine("Putz vei, o Leo ta demorando muito pra jogar...");
            }
        }
    }
}