import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.Math;

public class Main {
    public static long somaPA(int a0, int n){
        a0 += 1 - (Math.abs(a0) % 2);
        int an = a0 + (n - 1) * 2;

        return ((long)(a0 + an) * n) / 2;
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int N = Integer.parseInt(in.readLine().trim());
        for(int i = 0; i < N; ++i){
            String[] entrada = in.readLine().trim().split(" ");
            int X = Integer.parseInt(entrada[0]);
            int Y = Integer.parseInt(entrada[1]);

            System.out.println(somaPA(X, Y));
        }
    }
}