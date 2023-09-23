import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Arrays;

public class Main {
    public static class UniaoBusca {
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
        
        public boolean mesmoConjunto(int i, int j){
            return this.encontraConjunto(i) == this.encontraConjunto(j);
        }
        
        public void uneConjuntos(int i, int j){
            if(!this.mesmoConjunto(i, j)){
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

    public static class Aresta implements Comparable {
        public int u, v, peso;

        public Aresta(int u, int v, int peso){
            this.u = u;
            this.v = v;
            this.peso = peso;
        }

        @Override
        public boolean equals(Object obj){
            return ((Aresta)obj).u == this.u && ((Aresta)obj).v == this.v;
        }

        @Override
        public int compareTo(Object obj){
            return this.peso - ((Aresta)obj).peso;
        }
    } 

    public static int Kruskal(Aresta[] grafo, int n, int m){
        int resposta = 0;
        Arrays.sort(grafo);

        UniaoBusca ub = new UniaoBusca(n);
        for(int i = 0; i < m; ++i){
            Aresta atual = grafo[i];
            if(!ub.mesmoConjunto(atual.u, atual.v)){
                resposta += atual.peso;
                ub.uneConjuntos(atual.u, atual.v);
            }
        }

        return resposta;
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while(in.ready()){
            String[] entrada = in.readLine().trim().split(" ");
            int n = Integer.parseInt(entrada[0]);
            int m = Integer.parseInt(entrada[1]);

            if(n == 0 && m == 0){
                break;
            }

            int resposta = 0;
            Aresta[] grafo = new Aresta[m];
            for(int i = 0; i < m; ++i){
                entrada = in.readLine().trim().split(" ");
                grafo[i] = new Aresta(Integer.parseInt(entrada[0]), Integer.parseInt(entrada[1]), Integer.parseInt(entrada[2]));
                resposta += grafo[i].peso;
            }

            resposta -= Kruskal(grafo, n, m);

            System.out.println(resposta);
        }
    }
}