using System;
using System.Collections.Generic;
using System.Runtime;
using System.Linq;

class UniaoBusca {
    private int[] P, ranking;
    
    public UniaoBusca(int n){
        this.ranking = new int[n];
        this.P = new int[n];
        for(int i = 0; i < n; ++i){
            this.P[i] = i;
        }
    }
    
    public int encontraConjunto(int i){
        if(this.P[i] == i){
            return i;
        }
        this.P[i] = this.encontraConjunto(this.P[i]);
        return this.P[i];
    }
    
    public bool mesmoConjunto(int i, int j){
        return this.encontraConjunto(i) == this.encontraConjunto(j);
    }
    
    public void uneConjuntos(int i, int j){
        if(!mesmoConjunto(i, j)){
            int x = this.encontraConjunto(i), y = this.encontraConjunto(j);
            if(this.ranking[x] > this.ranking[y]){
                this.P[y] = x;
            }else{
                this.P[x] = y;
                if(this.ranking[x] == this.ranking[y]){
                    this.ranking[y]++;
                }
            }
        }
    }
}

class URI {
    static int Kruskal(ref List<Tuple<int, int, int>> grafo, int n, int m){
        int resposta = 0;
        grafo.Sort();

        UniaoBusca ub = new UniaoBusca(n);
        for(int i = 0; i < m; ++i){
            Tuple<int, int, int> atual = grafo[i];
            if(!ub.mesmoConjunto(atual.Item2, atual.Item3)){
                resposta += atual.Item1;
                ub.uneConjuntos(atual.Item2, atual.Item3);
            }
        }

        return resposta;
    }

    static void Main(string[] args) {
        string entrada;
        
        while((entrada = Console.ReadLine()) != null){
            List<int> numeros = entrada.Trim().Split(' ').Select(x => int.Parse(x)).ToList();
            
            int n = numeros[0], m = numeros[1];
            if(n == 0 && m == 0){
                break;
            }
            
            int resposta = 0;
            List<Tuple<int, int, int>> grafo = new List<Tuple<int, int, int>>();
            for(int i = 0; i < m; ++i){
                numeros = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
                grafo.Add(new Tuple<int, int, int>(numeros[2], numeros[0], numeros[1]));
                resposta += grafo[i].Item1;
            }
            
            resposta -= Kruskal(ref grafo, n, m);
            
            Console.WriteLine(resposta);
        }
    }
}