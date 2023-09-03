using System;

class URI {
    static int converte(int horas, int minutos){
        return 60 * horas + minutos;
    }

    static void Main(string[] args) {
        string entrada;
        while((entrada = Console.ReadLine()) != null){
            string[] partes = entrada.Trim().Split(' ');

            int H1 = int.Parse(partes[0]);
            int M1 = int.Parse(partes[1]);
            int H2 = int.Parse(partes[2]);
            int M2 = int.Parse(partes[3]);

            if(H1 == 0 && M1 == 0 && H2 == 0 && M2 == 0){
                break;
            }

            if(H2 < H1 || (H2 == H1 && M2 < M1)){
                H2 += 24;
            }
            int resposta = converte(H2, M2) - converte(H1, M1);

            Console.WriteLine(resposta);
        }
    }
}