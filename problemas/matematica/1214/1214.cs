using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        int C = int.Parse(Console.ReadLine());
        for(int k = 0; k < C; ++k){
            List<int> entrada = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
            
            int N = entrada[0];
            List<int> medias = entrada.Skip(1).ToList();
            
            double media = 0;
            for(int i = 0; i < N; ++i){
                media += medias[i];
            }
            media /= N;
            
            int acimaDaMedia = 0;
            for(int i = 0; i < N; ++i){
                if(medias[i] > media){
                    ++acimaDaMedia;
                }
            }
            
            Console.WriteLine(String.Format("{0:N3}%", Math.Round((((double)100 * acimaDaMedia) / N), 3)));
        }
    }
}