using System;

class URI {
    static void Main(string[] args) {
        string entrada;
        int pt_inter, pt_gremio, inter, gremio, empate;

        inter = 0;
        gremio = 0;
        empate = 0;
        while((entrada = Console.ReadLine()) != null){
            pt_inter = int.Parse(entrada.Split(' ')[0]);
            pt_gremio = int.Parse(entrada.Split(' ')[1]);

            if(pt_inter > pt_gremio){
                ++inter;
            }else if(pt_inter == pt_gremio){
                ++empate;
            }else{
                ++gremio;
            }

            Console.WriteLine("Novo grenal (1-sim 2-nao)");
            entrada = Console.ReadLine().Trim();
            if(entrada != "1"){
                break;
            }
        }

        Console.WriteLine($"{inter + gremio + empate} grenais");
        Console.WriteLine($"Inter:{inter}");
        Console.WriteLine($"Gremio:{gremio}");
        Console.WriteLine($"Empates:{empate}");

        if(inter > gremio){
            Console.WriteLine("Inter venceu mais");
        }else if(inter == gremio){
            Console.WriteLine("Nao houve vencedor");
        }else{
            Console.WriteLine("Gremio venceu mais");
        }
    }
}