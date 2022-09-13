import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while (in.ready()) {
            int M = Integer.parseInt(in.readLine());

            int numerador = 0;
            int denominador = 0;
            for (int i = 0; i < M; ++i) {
                String[] entrada = in.readLine().trim().split(" ");
                int N = Integer.parseInt(entrada[0]);
                int C = Integer.parseInt(entrada[1]);

                numerador += C * N;
                denominador += C;
            }

            System.out.printf("%.4f\n", numerador / (100.0 * denominador));
        }
    }
}