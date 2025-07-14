using System;
using System.Collections.Generic;
using System.Linq;

class URI
{
    class Ponto
    {
        public double x { get; set; }
        public double y { get; set; }

        public Ponto(double x, double y)
        {
            this.x = x;
            this.y = y;
        }
    }

    class Reta
    {
        public double a { get; set; }
        public double b { get; set; }
        public double c { get; set; }

        public Reta(double a, double b, double c)
        {
            this.a = a;
            this.b = b;
            this.c = c;
        }

        public Reta(Ponto p1, Ponto p2)
        {
            this.a = p2.y - p1.y;
            this.b = p1.x - p2.x;
            this.c = p1.y * (p2.x - p1.x) - (p2.y - p1.y) * p1.x;
        }
    }

    static double DistanciaEntreRetaEPonto(Reta r, Ponto p)
    {
        return (r.a * p.x + r.b * p.y + r.c) / Math.Sqrt(r.a * r.a + r.b * r.b);
    }

    static void Main(string[] args)
    {
        while (true)
        {
            int N = int.Parse(Console.ReadLine());
            if (N == 0)
            {
                break;
            }

            List<Ponto> pontos = new List<Ponto>();
            for (int i = 0; i < N; ++i)
            {
                List<double> numeros = Console.ReadLine().Trim().Split(' ').Select(x => double.Parse(x)).ToList();
                pontos.Add(new Ponto(numeros[0], numeros[1]));
            }

            double resposta = 50.0;
            for (int i = 0; i < N; ++i)
            {
                Ponto p1 = pontos[i];
                for (int j = i + 1; j < N; ++j)
                {
                    Ponto p2 = pontos[j];

                    Reta r = new Reta(p1, p2);
                    double distanciaTotal = 0.0;
                    for (int k = 0; k < N; ++k)
                    {
                        distanciaTotal += DistanciaEntreRetaEPonto(r, pontos[k]);
                    }
                    resposta = Math.Min(resposta, Math.Abs(distanciaTotal));
                }
            }

            Console.WriteLine($"{resposta:0.000}");
        }
    }
}