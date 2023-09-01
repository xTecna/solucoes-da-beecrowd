import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static long[] F;

    public static long Fatorial(int n){
        if(F[n] == 0)
            F[n] = n * Fatorial(n - 1);
        return F[n];
    } 

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        F = new long[21];
        F[0] = 1;

        while(in.ready()){
            String[] entrada = in.readLine().trim().split(" ");

            int M = Integer.parseInt(entrada[0]);
            int N = Integer.parseInt(entrada[1]);

            System.out.println(Fatorial(M) + Fatorial(N));
        }
    }
}