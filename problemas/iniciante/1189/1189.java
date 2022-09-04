import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        String O = in.readLine().trim();

        int contador = 0;
        double soma = 0.0;
        for (int i = 0; i < 12; ++i) {
            for (int j = 0; j < 12; ++j) {
                double numero = Double.parseDouble(in.readLine());

                if ((j < 5) && ((i < 6 && j < i) || (i > 5 && j < 11 - i))) {
                    soma += numero;
                    ++contador;
                }
            }
        }

        System.out.printf("%.1f\n", O.equals("S") ? soma : soma / contador);
    }
}