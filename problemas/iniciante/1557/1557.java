import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.Math;

public class Main {
    public static int digitos(int numero) {
        return (int) Math.floor(Math.log10(numero)) + 1;
    }

    public static String espaco(int numero, int limite) {
        String resposta = Integer.toString(numero);

        int espacos = limite - resposta.length();
        for (int i = 0; i < espacos; ++i) {
            resposta = " " + resposta;
        }

        return resposta;
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while (in.ready()) {
            int N = Integer.parseInt(in.readLine());

            if (N == 0) {
                break;
            }

            int limite = digitos(1 << (2 * N - 2));

            for (int i = 0; i < N; ++i) {
                System.out.print(espaco(1 << i, limite));
                for (int j = 1; j < N; ++j) {
                    System.out.printf(" %s", espaco(1 << (i + j), limite));
                }
                System.out.println("");
            }
            System.out.println("");
        }
    }
}