import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);
        
        int N, X;

        N = Integer.parseInt(in.readLine());

        int incluso = 0;
        for(int i = 0; i < N; ++i){
            X = Integer.parseInt(in.readLine());

            if(10 <= X && X <= 20){
                ++incluso;
            }
        }

        System.out.printf("%d in\n%d out\n", incluso, N - incluso);
    }
}