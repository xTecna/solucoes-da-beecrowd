import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static int[] F = new int[101];

    public static int Feynman(int n){
        if(F[n] == 0){
            F[n] = Feynman(n - 1) + n * n;
        }
        return F[n];
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        F[1] = 1;

        while(in.ready()){
            int N = Integer.parseInt(in.readLine());

            if(N == 0){
                break;
            }

            System.out.println(Feynman(N));
        }
    }
}