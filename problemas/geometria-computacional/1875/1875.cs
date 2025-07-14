using System;
using System.Collections.Generic;
using System.Linq;

class URI
{
    static void Main(string[] args)
    {
        Dictionary<char, Dictionary<char, int>> regras = new Dictionary<char, Dictionary<char, int>>
        {
            { 'R', new Dictionary<char, int> { { 'G', 2 }, { 'B', 1 } } },
            { 'G', new Dictionary<char, int> { { 'R', 1 }, { 'B', 2 } } },
            { 'B', new Dictionary<char, int> { { 'R', 2 }, { 'G', 1 } } }
        };

        int C = int.Parse(Console.ReadLine());
        for (int k = 0; k < C; ++k)
        {
            int P = int.Parse(Console.ReadLine());

            Dictionary<char, int> pontos = new Dictionary<char, int>();
            pontos['R'] = 0;
            pontos['G'] = 0;
            pontos['B'] = 0;

            for (int i = 0; i < P; ++i)
            {
                List<char> times = Console.ReadLine().Trim().Split(' ').Select(x => char.Parse(x)).ToList();
                pontos[times[0]] += regras[times[0]][times[1]];
            }

            if (pontos['R'] == pontos['G'] && pontos['G'] == pontos['B'])
            {
                Console.WriteLine("trempate");
            }
            else if (pontos['R'] > pontos['G'] && pontos['R'] > pontos['B'])
            {
                Console.WriteLine("red");
            }
            else if (pontos['G'] > pontos['R'] && pontos['G'] > pontos['B'])
            {
                Console.WriteLine("green");
            }
            else if (pontos['B'] > pontos['R'] && pontos['B'] > pontos['G'])
            {
                Console.WriteLine("blue");
            }
            else
            {
                Console.WriteLine("empate");
            }
        }
    }
}