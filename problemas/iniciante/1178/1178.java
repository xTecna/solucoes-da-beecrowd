import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        double N = Double.parseDouble(in.readLine());
        for(int i = 0; i < 100; ++i){
            System.out.printf("N[%d] = %.4f\n", i, N);
            N /= 2.0;
        }
    }
}