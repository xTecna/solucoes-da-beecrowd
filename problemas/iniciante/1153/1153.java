import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static int[] F;

    public static int Fatorial(int n){
        if(F[n] == -1){
            F[n] = Fatorial(n - 1) * n;
        }
        return F[n];
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);
    
        F = new int[14];
        F[0] = 1;
        for(int i = 1; i < 14; ++i){
            F[i] = -1;
        }

        int N = Integer.parseInt(in.readLine());

        System.out.println(Fatorial(N));
    }
}