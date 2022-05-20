using System;

class URI
{
    static int[,] regras = new int[5, 5]{
        {0, 1, -1, 1, -1}, // Tesoura
        {-1, 0, 1, -1, 1}, // Papel
        {1, -1, 0, 1, -1}, // Pedra
        {-1, 1, -1, 0, 1}, // Lagarto
        {1, -1, 1, -1, 0}  // Spock
    };

    static int converte(string jogada)
    {
        switch (jogada)
        {
            case "tesoura": return 0;
            case "papel": return 1;
            case "pedra": return 2;
            case "lagarto": return 3;
            case "Spock": return 4;
            default: return -1;
        }
    }

    static void Main(string[] args)
    {
        int T = int.Parse(Console.ReadLine());
        for (int i = 1; i <= T; ++i)
        {
            string[] jogadas = Console.ReadLine().Trim().Split(' ');

            Console.Write($"Caso #{i}: ");
            switch (regras[converte(jogadas[0]), converte(jogadas[1])])
            {
                case -1:
                    Console.WriteLine("Raj trapaceou!");
                    break;
                case 0:
                    Console.WriteLine("De novo!");
                    break;
                case 1:
                    Console.WriteLine("Bazinga!");
                    break;
            }
        }
    }
}