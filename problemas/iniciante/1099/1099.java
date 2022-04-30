import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.Math;

public class Main {
    public static int numeroImpares(int X, int Y){
        return (Y - X) / 2 + 1;
    }

    public static int somaPA(int a0, int an){
        return (a0 + an) * numeroImpares(a0, an) / 2;
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);
    
        int N = Integer.parseInt(in.readLine());
        for(int i = 0; i < N; ++i){
            String[] entrada = in.readLine().trim().split(" ");
            int X = Integer.parseInt(entrada[0]);
            int Y = Integer.parseInt(entrada[1]);

            if(X > Y){
                int temp = X;
                X = Y;
                Y = temp;
            }

            X += (Math.abs(X) % 2) + 1;
            Y -= (Math.abs(Y) % 2) + 1;

            System.out.printf("%d\n", X > Y ? 0 : somaPA(X, Y));
        }
    }
}