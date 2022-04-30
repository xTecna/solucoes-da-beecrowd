using System;

class URI {
    static void Main(string[] args) {
        string[] caracteristicas = new string[3];

        for(int i = 0; i < 3; ++i){
            caracteristicas[i] = Console.ReadLine();
        }

        if (caracteristicas[0] == "vertebrado")
        {
            if (caracteristicas[1] == "ave")
            {
                if (caracteristicas[2] == "carnivoro")
                {
                    Console.WriteLine("aguia");
                }
                else if (caracteristicas[2] == "onivoro")
                {
                    Console.WriteLine("pomba");
                }
            }
            else if (caracteristicas[1] == "mamifero")
            {
                if (caracteristicas[2] == "onivoro")
                {
                    Console.WriteLine("homem");
                }
                else if (caracteristicas[2] == "herbivoro")
                {
                    Console.WriteLine("vaca");
                }
            }
        }
        else if (caracteristicas[0] == "invertebrado")
        {
            if (caracteristicas[1] == "inseto")
            {
                if (caracteristicas[2] == "hematofago")
                {
                    Console.WriteLine("pulga");
                }
                else if (caracteristicas[2] == "herbivoro")
                {
                    Console.WriteLine("lagarta");
                }
            }
            else if (caracteristicas[1] == "anelideo")
            {
                if (caracteristicas[2] == "hematofago")
                {
                    Console.WriteLine("sanguessuga");
                }
                else if (caracteristicas[2] == "onivoro")
                {
                    Console.WriteLine("minhoca");
                }
            }
        }
    }
}