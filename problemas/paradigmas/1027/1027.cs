using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime;

class URI
{
    static void Main(string[] args)
    {
        string entrada;

        while ((entrada = Console.ReadLine()) != null)
        {
            int N = int.Parse(entrada);

            List<Tuple<int, int>> pontos = new List<Tuple<int, int>>();
            for (int i = 0; i < N; ++i)
            {
                List<int> numeros = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
                pontos.Add(new Tuple<int, int>(numeros[0], numeros[1]));
            }
            pontos.Sort();

            int[,] DP = new int[N, 2];
            DP[0, 0] = 1;
            DP[0, 1] = 1;
            int resposta = 1;
            for (int i = 1; i < N; ++i)
            {
                DP[i, 0] = 1;
                DP[i, 1] = 1;

                for (int j = 0; j < i; ++j)
                {
                    if (pontos[i].Item1 == pontos[j].Item1)
                    {
                        break;
                    }

                    if (pontos[i].Item2 - pontos[j].Item2 == 2)
                    {
                        // Descendo, acrescentando mais um no caso em que j está acima
                        DP[i, 1] = Math.Max(DP[i, 1], DP[j, 0] + 1);
                    }
                    else if (pontos[i].Item2 - pontos[j].Item2 == -2)
                    {
                        // Subindo, acrescentando mais um no caso em que j está abaixo
                        DP[i, 0] = Math.Max(DP[i, 0], DP[j, 1] + 1);
                    }
                }

                resposta = Math.Max(resposta, Math.Max(DP[i, 0], DP[i, 1]));
            }

            Console.WriteLine(resposta);
        }
    }
}