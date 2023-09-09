import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while(in.ready()){
            int N = Integer.parseInt(in.readLine());

            if(N == 0){
                break;
            }

            String[] H = in.readLine().trim().split(" ");
            int[] amostras = new int[N];
            for(int i = 0; i < N; ++i){
                amostras[i] = Integer.parseInt(H[i]);
            }

            int picos = 0;
            for(int i = 0; i < N; ++i){
                int anterior = amostras[((i - 1) + N) % N];
                int proximo = amostras[(i + 1) % N];

                if((amostras[i] < anterior && amostras[i] < proximo) || (amostras[i] > anterior && amostras[i] > proximo)){
                    ++picos;
                }
            }

            System.out.println(picos);
        }
    }
}