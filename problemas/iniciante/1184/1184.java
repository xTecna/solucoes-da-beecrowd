import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        String O = in.readLine();

        int contador = 0;
        double soma = 0.0;
        for (int i = 0; i < 12; ++i) {
            for (int j = 0; j < 12; ++j) {
                double numero = Double.parseDouble(in.readLine());

                if (i > j) {
                    soma += numero;
                    ++contador;
                }
            }
        }

        System.out.printf("%.1f\n", (O == "S" ? soma : soma / contador));
    }
}