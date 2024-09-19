using System;

class URI
{
    static void Main(string[] args)
    {
        string T;
        double[,] M;

        T = Console.ReadLine();

        M = new double[12, 12];
        for (int i = 0; i < 12; ++i)
        {
            for (int j = 0; j < 12; ++j)
            {
                M[i, j] = double.Parse(Console.ReadLine());
            }
        }

        double soma = 0.0;
        int quantidade = 0;
        for (int i = 0; i < 12; ++i)
        {
            for(int j = 11; j > 11 - i && j > i; --j)
            {
                soma += M[i, j];
                quantidade += 1;
            }
        }

        if(T == "S"){
            Console.WriteLine($"{soma:0.0}"); 
        }else{
            Console.WriteLine($"{soma / quantidade:0.0}");
        }
    }
}