import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.Math;

public class Main {
    public static void FloydWarshall(long[][] grafo, int N){
        for(int k = 1; k <= N; ++k){
            for(int i = 1; i <= N; ++i){
                for(int j = 1; j <= N; ++j){
                    grafo[i][j] = Math.min(grafo[i][j], grafo[i][k] + grafo[k][j]);
                }
            }
        }
    }
    
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while(in.ready()){
            String[] NE = in.readLine().trim().split(" ");
            int N = Integer.parseInt(NE[0]);
            int E = Integer.parseInt(NE[1]);

            if(N == 0 && E == 0){
                break;
            }

            long[][] grafo = new long[N + 1][N + 1];
            for(int i = 1; i <= N; ++i){
                for(int j = 1; j <= N; ++j){
                    grafo[i][j] = Integer.MAX_VALUE;
                }
            }

            for(int i = 0; i < E; ++i){
                String[] XYH = in.readLine().trim().split(" ");
                int X = Integer.parseInt(XYH[0]);
                int Y = Integer.parseInt(XYH[1]);
                int H = Integer.parseInt(XYH[2]);

                grafo[X][Y] = H;
            }

            for(int i = 1; i <= N; ++i){
                for(int j = i; j <= N; ++j){
                    if(grafo[i][j] != Integer.MAX_VALUE && grafo[j][i] != Integer.MAX_VALUE){
                        grafo[i][j] = 0;
                        grafo[j][i] = 0;
                    }
                }
            }

            FloydWarshall(grafo, N);

            int K = Integer.parseInt(in.readLine());
            for(int i = 0; i < K; ++i){
                String[] OD = in.readLine().trim().split(" ");
                int O = Integer.parseInt(OD[0]);
                int D = Integer.parseInt(OD[1]);

                if(grafo[O][D] == Integer.MAX_VALUE){
                    System.out.println("Nao e possivel entregar a carta");
                }else{
                    System.out.println(grafo[O][D]);
                }
            }
            System.out.println("");
        }
    }
}