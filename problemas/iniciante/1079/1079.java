import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int[] pesos = { 2, 3, 5 };
        int N = Integer.parseInt(in.readLine());
        for (int k = 0; k < N; ++k) {
            double media = 0.0;

            String[] entrada = in.readLine().trim().split(" ");
            for (int i = 0; i < 3; ++i) {
                media += Double.parseDouble(entrada[i]) * pesos[i];
            }

            System.out.printf("%.1f\n", media / 10);
        }
    }
}