import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.HashSet;
import java.util.AbstractMap.SimpleEntry;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int T = Integer.parseInt(in.readLine());

        for(int k = 0; k < T; ++k){
            int N = Integer.parseInt(in.readLine());

            String[] nm = in.readLine().trim().split(" ");
            int n = Integer.parseInt(nm[0]);
            int m = Integer.parseInt(nm[1]);

            HashSet<SimpleEntry<Integer, Integer>> arestas = new HashSet<SimpleEntry<Integer, Integer>>();
            for(int i = 0; i < m; ++i){
                String[] uv = in.readLine().trim().split(" ");
                int u = Integer.parseInt(uv[0]);
                int v = Integer.parseInt(uv[1]);

                arestas.add(new SimpleEntry<Integer, Integer>(u, v));
                arestas.add(new SimpleEntry<Integer, Integer>(v, u));
            }

            System.out.println(arestas.size());
        }
    }
}