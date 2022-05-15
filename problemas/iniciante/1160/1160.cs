using System;
using System.Runtime;

class URI {
    static void Main(string[] args) {
        int T = int.Parse(Console.ReadLine());
        for(int i = 0; i < T; ++i){
            string[] entrada = Console.ReadLine().Trim().Split(' ');
            int PA = int.Parse(entrada[0]);
            int PB = int.Parse(entrada[1]);
            double G1 = double.Parse(entrada[2])/100;
            double G2 = double.Parse(entrada[3])/100;

            int anos;
            for(anos = 1; PA <= PB && anos < 101; ++anos){
                PA += (int)Math.Floor(PA * G1);
                PB += (int)Math.Floor(PB * G2);
            }

            if(PA <= PB){
                Console.WriteLine("Mais de 1 seculo.");
            }else{
                Console.WriteLine($"{anos - 1} anos.");
            }
        }
    }
}