import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static int NMAX = 10000001;
    public static boolean[] C;

    public static void Crivo(){
        C = new boolean[NMAX];

        C[0] = false;
        C[1] = false;
        C[2] = true;
        for(int i = 4; i < NMAX; i += 2){
            C[i] = false;
        }
        for(int i = 3; i < NMAX; i += 2){
            C[i] = true;
        }

        for(int i = 3; i < NMAX; i += 2){
            if(C[i]){
                for(int j = 3 * i; j < NMAX; j += 2 * i){
                    C[j] = false;
                }
            }
        }
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        Crivo();

        int N = Integer.parseInt(in.readLine());
        for(int i = 0; i < N; ++i){
            int X = Integer.parseInt(in.readLine());

            if(C[X]){
                System.out.printf("%d eh primo\n", X);
            }else{
                System.out.printf("%d nao eh primo\n", X);
            }
        }
    }
}