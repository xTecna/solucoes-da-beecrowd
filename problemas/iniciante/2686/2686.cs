using System;

class URI {
    static int converte(double angulo){
        return (int)(angulo * 240);
    }

    static int tempoDecorrido(double angulo){
        return (converte(angulo) + converte(90)) % converte(360);
    }

    static void Main(string[] args) {
        string entrada;

        while((entrada = Console.ReadLine()) != null){
            double M = double.Parse(entrada);

            if (M < 90.0 || M == 360.0)
            {
                Console.WriteLine("Bom Dia!!");
            }
            else if (M < 180.0)
            {
                Console.WriteLine("Boa Tarde!!");
            }
            else if (M < 270.0)
            {
                Console.WriteLine("Boa Noite!!");
            }
            else
            {
                Console.WriteLine("De Madrugada!!");
            }

            int tempo = tempoDecorrido(M);
            int horas = tempo / 3600;
            tempo %= 3600;
            int minutos = tempo / 60;
            int segundos = tempo % 60;

            Console.WriteLine($"{horas:D2}:{minutos:D2}:{segundos:D2}");
        }
    }
}