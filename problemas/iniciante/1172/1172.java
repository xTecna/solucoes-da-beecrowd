import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int X;

        for(int i = 0; i < 10; ++i){
            X = Integer.parseInt(in.readLine());
            System.out.printf("X[%d] = %d\n", i, X <= 0 ? 1 : X);
        }
    }
}