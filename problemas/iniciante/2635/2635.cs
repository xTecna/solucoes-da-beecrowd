using System;
using System.Collections.Generic;
using System.Runtime;

class TrieNo{
    public int qtd;
    public int maxPalavra;
    public IDictionary<char, TrieNo> prox;

    public TrieNo(){
        qtd = 0;
        maxPalavra = 0;
        prox = new Dictionary<char, TrieNo>();
    }
}

class Trie{
    public TrieNo raiz;

    public Trie(){
        raiz = new TrieNo();
    }

    public void adicionaPalavra(string palavra){
        TrieNo no = raiz;

        for(int i = 0; i < palavra.Length; ++i){
            char indice = palavra[i];
            if(!(no.prox.ContainsKey(indice))){
                no.prox[indice] = new TrieNo();
            }
            no = no.prox[indice];
            no.qtd += 1;
            no.maxPalavra = Math.Max(no.maxPalavra, palavra.Length);
        }
    }

    public Tuple<int, int> consultaPalavra(string palavra){
        TrieNo no = raiz;

        for(int i = 0; i < palavra.Length; ++i){
            char indice = palavra[i];
            if(!(no.prox.ContainsKey(indice))){
                return new Tuple<int, int>(-1, -1);
            }
            no = no.prox[indice];
        }

        return new Tuple<int, int>(no.qtd, no.maxPalavra);
    }
}

class URI {
    static void Main(string[] args) {
        string entrada;

        while((entrada = Console.ReadLine()) != null){
            int N = int.Parse(entrada);

            Trie trie = new Trie();
            for(int i = 0; i < N; ++i){
                string palavra = Console.ReadLine();
                trie.adicionaPalavra(palavra);
            }

            int Q = int.Parse(Console.ReadLine());
            for(int i = 0; i < Q; ++i){
                string palavra = Console.ReadLine();
                Tuple<int, int> resultado = trie.consultaPalavra(palavra);

                if(resultado.Item1 == -1 && resultado.Item2 == -1){
                    Console.WriteLine(-1);
                }else{
                    Console.WriteLine($"{resultado.Item1} {resultado.Item2}");
                }
            }
        }
    }
}