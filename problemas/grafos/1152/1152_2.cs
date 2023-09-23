using System;
using System.Collections.Generic;
using System.Linq;

class FilaDePrioridade {
    private List<Tuple<int, int>> arvore;

    public FilaDePrioridade(){
        this.arvore = new List<Tuple<int, int>>();
        this.arvore.Add(new Tuple<int, int>(0, 0));
    }

    private int pai(int i){
        return i/2;
    }

    private int filhoEsquerdo(int i){
        return 2*i;
    }

    private int filhoDireito(int i){
        return 2*i + 1;
    }

    private int comp(Tuple<int, int> a, Tuple<int, int> b){
        return b.Item2 - a.Item2;
    }

    private void corrigeSubindo(int indice){
        if(indice == 1){
            return;
        }

        int acima = this.pai(indice);
        if(this.comp(this.arvore[acima], this.arvore[indice]) < 0){
            Tuple<int, int> temp = this.arvore[acima];
            this.arvore[acima] = this.arvore[indice];
            this.arvore[indice] = temp;
            this.corrigeSubindo(acima);
        }
    }

    public void push(Tuple<int, int> valor){
        this.arvore.Add(valor);
        this.corrigeSubindo(this.arvore.Count - 1);
    }

    private void corrigeDescendo(int indice){
        int abaixo = this.filhoEsquerdo(indice);
        if(abaixo >= this.arvore.Count){
            return;
        }
        if(this.comp(this.arvore[indice], this.arvore[abaixo]) < 0){
            Tuple<int, int> temp = this.arvore[abaixo];
            this.arvore[abaixo] = this.arvore[indice];
            this.arvore[indice] = temp;
            this.corrigeDescendo(abaixo);
        }

        abaixo = this.filhoDireito(indice);
        if(abaixo >= this.arvore.Count){
            return;
        }
        if(this.comp(this.arvore[indice], this.arvore[abaixo]) < 0){
            Tuple<int, int> temp = this.arvore[abaixo];
            this.arvore[abaixo] = this.arvore[indice];
            this.arvore[indice] = temp;
            this.corrigeDescendo(abaixo);
        }
    }

    public void pop(){
        if(this.arvore.Count <= 1){
            return;
        }

        Tuple<int, int> temp = this.arvore[1];
        this.arvore[1] = this.arvore[this.arvore.Count - 1];
        this.arvore[this.arvore.Count - 1] = temp;
        this.arvore.RemoveAt(this.arvore.Count - 1);
        this.corrigeDescendo(1);
    }

    public Tuple<int, int> top(){
        return this.arvore[1];
    }

    public bool empty(){
        return this.arvore.Count == 1;
    }
}

class URI {
    static void visitaVertice(ref List<bool> visitados, ref List<List<Tuple<int, int>>> grafo, ref FilaDePrioridade fila, int u){
        visitados[u] = true;

        for(int i = 0; i < grafo[u].Count; ++i){
            Tuple<int, int> aresta = grafo[u][i];

            if(!visitados[aresta.Item1]){
                fila.push(aresta);
            }
        }
    }

    static int Prim(ref List<List<Tuple<int, int>>> grafo, int n){
        List<bool> visitados = new List<bool>();
        for(int i = 0; i < n; ++i){
            visitados.Add(false);
        }

        FilaDePrioridade fila = new FilaDePrioridade();

        visitaVertice(ref visitados, ref grafo, ref fila, 0);

        int resposta = 0;
        while(!fila.empty()){
            Tuple<int, int> atual = fila.top();
            fila.pop();
            if(!visitados[atual.Item1]){
                resposta += atual.Item2;
                visitaVertice(ref visitados, ref grafo, ref fila, atual.Item1);
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
            List<List<Tuple<int, int>>> grafo = new List<List<Tuple<int, int>>>();
            for(int i = 0; i < n; ++i){
                grafo.Add(new List<Tuple<int, int>>());
            }
            for(int i = 0; i < m; ++i){
                numeros = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
                grafo[numeros[0]].Add(new Tuple<int, int>(numeros[1], numeros[2]));
                grafo[numeros[1]].Add(new Tuple<int, int>(numeros[0], numeros[2]));
                resposta += numeros[2];
            }
            
            resposta -= Prim(ref grafo, n);
            
            Console.WriteLine(resposta);
        }
    }
}