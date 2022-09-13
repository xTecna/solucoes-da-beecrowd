import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Arrays;

public class Main {
    public static double notaFinal(double[] notas, double dificuldade) {
        Arrays.sort(notas);

        double soma = 0.0;
        for (int i = 1; i < 6; ++i) {
            soma += notas[i];
        }

        return soma * dificuldade;
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int N = Integer.parseInt(in.readLine());
        for (int i = 0; i < N; ++i) {
            String nome = in.readLine();
            double dificuldade = Double.parseDouble(in.readLine());
            String[] numeros = in.readLine().trim().split(" ");

            double[] notas = new double[7];
            for (int j = 0; j < 7; ++j) {
                notas[j] = Double.parseDouble(numeros[j]);
            }

            System.out.printf("%s %.2f\n", nome, notaFinal(notas, dificuldade));
        }
    }
}