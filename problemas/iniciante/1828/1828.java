import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static String[] jogadas = { "tesoura", "papel", "pedra", "lagarto", "Spock" };

    public static int[][] regras = new int[][] {
            { 0, 1, -1, 1, -1 }, // Tesoura
            { -1, 0, 1, -1, 1 }, // Papel
            { 1, -1, 0, 1, -1 }, // Pedra
            { -1, 1, -1, 0, 1 }, // Lagarto
            { 1, -1, 1, -1, 0 } // Spock
    };

    public static int converte(String jogada) {
        for (int i = 0; i < 5; ++i) {
            if (jogada.equals(jogadas[i])) {
                return i;
            }
        }
        return -1;
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int T = Integer.parseInt(in.readLine());
        for (int i = 1; i <= T; ++i) {
            String[] entrada = in.readLine().trim().split(" ");

            int i_sheldon = converte(entrada[0]);
            int i_raj = converte(entrada[1]);

            System.out.printf("Caso #%d: ", i);
            if (regras[i_sheldon][i_raj] == -1) {
                System.out.println("Raj trapaceou!");
            } else if (regras[i_sheldon][i_raj] == 0) {
                System.out.println("De novo!");
            } else if (regras[i_sheldon][i_raj] == 1) {
                System.out.println("Bazinga!");
            }
        }
    }
}