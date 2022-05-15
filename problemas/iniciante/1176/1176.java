import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static long[] F;

    public static long Fibonacci(int n){
        if(F[n] == -1){
            F[n] = Fibonacci(n - 2) + Fibonacci(n - 1);
        }
        return F[n];
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        F = new long[61];
        F[0] = 0;
        F[1] = 1;
        for(int i = 2; i < 61; ++i){
            F[i] = -1;
        }

        int T = Integer.parseInt(in.readLine());
        for(int i = 0; i < T; ++i){
            int N = Integer.parseInt(in.readLine());

            System.out.printf("Fib(%d) = %d\n", N, Fibonacci(N));
        }
    }
}