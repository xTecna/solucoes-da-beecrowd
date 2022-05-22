using System;

class Fracao
{
    public int num;
    public int den;

    public Fracao()
    {
        this.num = 0;
        this.den = 0;
    }

    public Fracao(int num, int den)
    {
        this.num = num;
        this.den = den;
    }

    private static int MDC(int a, int b)
    {
        return (b == 0) ? a : MDC(b, a % b);
    }

    public static Fracao operator +(Fracao a, Fracao b)
    {
        return new Fracao(a.num * b.den + a.den * b.num, a.den * b.den);
    }

    public static Fracao operator -(Fracao a, Fracao b)
    {
        return new Fracao(a.num * b.den - a.den * b.num, a.den * b.den);
    }

    public static Fracao operator *(Fracao a, Fracao b)
    {
        return new Fracao(a.num * b.num, a.den * b.den);
    }

    public static Fracao operator /(Fracao a, Fracao b)
    {
        return new Fracao(a.num * b.den, a.den * b.num);
    }

    public Fracao irredutivel()
    {
        int mdc = MDC(Math.Abs(this.num), this.den);

        return new Fracao(this.num / mdc, this.den / mdc);
    }
}

class URI
{
    static void Main(string[] args)
    {
        int T = int.Parse(Console.ReadLine());

        for (int i = 0; i < T; ++i)
        {
            string[] entrada = Console.ReadLine().Trim().Split(' ');

            Fracao f1 = new Fracao(int.Parse(entrada[0]), int.Parse(entrada[2]));
            Fracao f2 = new Fracao(int.Parse(entrada[4]), int.Parse(entrada[6]));

            Fracao resultado = new Fracao();
            switch (entrada[3])
            {
                case "+":
                    resultado = f1 + f2;
                    break;
                case "-":
                    resultado = f1 - f2;
                    break;
                case "*":
                    resultado = f1 * f2;
                    break;
                case "/":
                    resultado = f1 / f2;
                    break;
            }

            Fracao irredutivel = resultado.irredutivel();

            Console.WriteLine($"{resultado.num}/{resultado.den} = {irredutivel.num}/{irredutivel.den}");
        }
    }
}