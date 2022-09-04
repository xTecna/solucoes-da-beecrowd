import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        double[] precos = { 1.5, 2.5, 3.5, 4.5, 5.5 };

        int N = Integer.parseInt(in.readLine());
        double total = 0.0;
        for (int i = 0; i < N; ++i) {
            String[] entrada = in.readLine().trim().split(" ");

            total += Integer.parseInt(entrada[1]) * precos[Integer.parseInt(entrada[0]) - 1001];
        }

        System.out.printf("%.2f\n", total);
    }
}