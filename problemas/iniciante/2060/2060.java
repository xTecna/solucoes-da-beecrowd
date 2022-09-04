import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int N = Integer.parseInt(in.readLine());
        String[] numeros = in.readLine().trim().split(" ");

        int[] multiplos = new int[6];
        for (int i = 0; i < N; ++i) {
            int numero = Integer.parseInt(numeros[i]);

            for (int j = 2; j < 6; ++j) {
                if (numero % j == 0) {
                    ++multiplos[j];
                }
            }
        }

        for (int i = 2; i < 6; ++i) {
            System.out.printf("%d Multiplo(s) de %d\n", multiplos[i], i);
        }
    }
}