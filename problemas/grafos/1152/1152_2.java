import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.PriorityQueue;

public class Main {

    public static class Aresta implements Comparable {
        public int u, v, peso;

        public Aresta(){
            this.u = 0;
            this.v = 0;
            this.peso = 0;
        }

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

    public static void visitaVertice(ArrayList<Boolean> visitados, ArrayList<ArrayList<Aresta>> grafo, PriorityQueue<Aresta> fila, int u) {
        visitados.set(u, true);

        for(int i = 0; i < grafo.get(u).size(); ++i){
            Aresta aresta = grafo.get(u).get(i);
            if(!visitados.get(aresta.v))
            {
                fila.add(aresta);
            }
        }
    }

    public static int Prim(ArrayList<ArrayList<Aresta>> grafo, int n) {
        ArrayList<Boolean> visitados = new ArrayList<Boolean>();
        for(int i = 0; i < n; ++i){
            visitados.add(false);
        }

        PriorityQueue<Aresta> fila = new PriorityQueue<Aresta>();
        visitaVertice(visitados, grafo, fila, 0);

        int resposta = 0;
        while(!fila.isEmpty()){
            Aresta atual = fila.peek();
            fila.remove();

            if(!visitados.get(atual.v)){
                resposta += atual.peso;
                visitaVertice(visitados, grafo, fila, atual.v);
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
            ArrayList<ArrayList<Aresta>> grafo = new ArrayList<ArrayList<Aresta>>();
            for(int i = 0; i < n; ++i){
                grafo.add(new ArrayList<Aresta>());
            }
            for(int i = 0; i < m; ++i){
                entrada = in.readLine().trim().split(" ");
                int u = Integer.parseInt(entrada[0]);
                int v = Integer.parseInt(entrada[1]);
                int peso = Integer.parseInt(entrada[2]);
                grafo.get(u).add(new Aresta(u, v, peso));
                grafo.get(v).add(new Aresta(v, u, peso));
                resposta += peso;
            }

            resposta -= Prim(grafo, n);

            System.out.println(resposta);
        }
    }
}