using System;
using System.Collections.Generic;

class URI {
    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());
        for(int k = 0; k < N; ++k){
            Dictionary<char, int> frequencias = new Dictionary<char, int>();
            
            string texto = Console.ReadLine().ToLower();
            for(int i = 0; i < texto.Length; ++i){
                if(char.IsLetter(texto[i])){
                    if(!frequencias.ContainsKey(texto[i])){
                        frequencias[texto[i]] = 0;
                    }
                    frequencias[texto[i]] += 1;
                }
            }
            
            int maior = 0;
            foreach(KeyValuePair<char, int> frequencia in frequencias){
                if(frequencia.Value > maior){
                    maior = frequencia.Value;
                }
            }
            
            List<char> letras = new List<char>();
            foreach(KeyValuePair<char, int> frequencia in frequencias){
                if(frequencia.Value == maior){
                    letras.Add(frequencia.Key);
                }
            }
            
            letras.Sort();
            Console.WriteLine(String.Join("", letras));
        }
    }
}