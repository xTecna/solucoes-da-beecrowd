using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void adiciona(Dictionary<char, char> mapa, char chave, char valor){
        if(mapa.ContainsKey(chave)){
            mapa.Remove(chave);
        }
        mapa.Add(chave, valor);
    }

    static void Main(string[] args) {
        string entrada;
        Dictionary<char, char> traducao = new Dictionary<char, char>();

        while((entrada = Console.ReadLine()) != null){
            traducao.Clear();

            List<int> numeros = entrada.Trim().Split(' ').Select(x => int.Parse(x)).ToList();

            string cifra1 = Console.ReadLine();
            string lowerCifra1 = cifra1.ToLower();
            string cifra2 = Console.ReadLine();
            string lowerCifra2 = cifra2.ToLower();
            for(int i = 0; i < cifra1.Length; ++i){
                adiciona(traducao, cifra1[i], cifra2[i]);
                adiciona(traducao, lowerCifra1[i], lowerCifra2[i]);
                adiciona(traducao, cifra2[i], cifra1[i]);
                adiciona(traducao, lowerCifra2[i], lowerCifra1[i]);
            }

            for(int i = 0; i < numeros[1]; ++i){
                string frase = Console.ReadLine();
                for(int j = 0; j < frase.Length; ++j){
                    if(traducao.ContainsKey(frase[j])){
                        Console.Write(traducao[frase[j]]);
                    }else{
                        Console.Write(frase[j]);
                    }
                }
                Console.WriteLine("");
            }
            Console.WriteLine("");
        }
    }
}