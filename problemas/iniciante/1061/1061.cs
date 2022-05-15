using System;

class URI {
    static int converte(int dia, int hora, int minuto, int segundo){
        return (24 * 60 * 60) * dia + (60 * 60) * hora + 60 * minuto + segundo;
    }

    static void Main(string[] args) {
        string[] entrada;
        int d_inicial, h_inicial, m_inicial, s_inicial, d_final, h_final, m_final, s_final;

        d_inicial = int.Parse(Console.ReadLine().Trim().Split(' ')[1]);
        entrada = Console.ReadLine().Trim().Split(':');
        h_inicial = int.Parse(entrada[0].Trim());
        m_inicial = int.Parse(entrada[1].Trim());
        s_inicial = int.Parse(entrada[2].Trim());
        d_final = int.Parse(Console.ReadLine().Trim().Split(' ')[1]);
        entrada = Console.ReadLine().Trim().Split(':');
        h_final = int.Parse(entrada[0].Trim());
        m_final = int.Parse(entrada[1].Trim());
        s_final = int.Parse(entrada[2].Trim());

        int inicial = converte(d_inicial, h_inicial, m_inicial, s_inicial);
        int final = converte(d_final, h_final, m_final, s_final);

        int duracao = final - inicial;

        Console.WriteLine($"{duracao/(24 * 60 * 60)} dia(s)");
        duracao %= (24 * 60 * 60);
        Console.WriteLine($"{duracao/(60 * 60)} hora(s)");
        duracao %= (60 * 60);
        Console.WriteLine($"{duracao/60} minuto(s)");
        duracao %= 60;
        Console.WriteLine($"{duracao} segundo(s)");
    }
}