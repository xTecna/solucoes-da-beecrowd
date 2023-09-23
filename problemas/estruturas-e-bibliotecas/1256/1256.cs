using System;
using System.Collections.Generic;
using System.Linq;

class TabelaHash {
    public int chave { get; set; }
    public List<int>[] tabela { get; set; }

    public TabelaHash(int chave){
        this.chave = chave;
        this.tabela = new List<int>[chave];
        for(int i = 0; i < chave; ++i){
            this.tabela[i] = new List<int>();
        }
    }

    private int funcaoHash(int x){
        return x % this.chave;
    }

    public void adiciona(int x){
        this.tabela[this.funcaoHash(x)].Add(x);
    }

    private void imprimeLinha(int i){
        Console.Write($"{i} ->");
        for(int j = 0; j < this.tabela[i].Count; ++j){
            Console.Write($" {this.tabela[i][j]} ->");
        }
        Console.WriteLine(" \\");
    }

    public void imprime(){
        for(int i = 0; i < this.tabela.Length; ++i){
            this.imprimeLinha(i);
        }
    }
}

class URI {
    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());
        for(int k = 0; k < N; ++k){
            if(k > 0){
                Console.WriteLine("");
            }

            string[] entrada = Console.ReadLine().Trim().Split(' ');

            int M = int.Parse(entrada[0]);
            int C = int.Parse(entrada[1]);
            TabelaHash tabela = new TabelaHash(M);

            List<int> chaves = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
            for(int i = 0; i < chaves.Count; ++i){
                tabela.adiciona(chaves[i]);
            }

            tabela.imprime();
        }
    }
}