import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        for (int i = 0; i < 100; ++i) {
            double n = Double.parseDouble(in.readLine());

            if (n <= 10.0) {
                System.out.printf("A[%d] = %.1f\n", i, n);
            }
        }
    }
}