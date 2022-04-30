import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static int[] F;

    public static int Fibonacci(int n){
        if(F[n] == -1){
            F[n] = Fibonacci(n - 2) + Fibonacci(n - 1);
        }
        return F[n];
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        F = new int[46];
        F[0] = 0;
        F[1] = 1;
        for(int i = 2; i < 46; ++i){
            F[i] = -1;
        }

        int N = Integer.parseInt(in.readLine());
        Fibonacci(N);

        System.out.print(F[0]);
        for(int i = 1; i < N; ++i){
            System.out.printf(" %d", F[i]);
        }
        System.out.println("");
    }
}