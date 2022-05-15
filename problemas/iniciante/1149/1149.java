import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static int somaPA(int a0, int n){
        int an = a0 + n - 1;

        return (a0 + an) * n / 2;
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);
    
        String[] entrada = in.readLine().trim().split(" ");
        int A = Integer.parseInt(entrada[0]);

        int N = 0;
        for(int i = 1; i < entrada.length; ++i){
            N = Integer.parseInt(entrada[i]);

            if(N > 0){
                break;
            }
        }

        System.out.printf("%d\n", somaPA(A, N));
    }
}