import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        String[] entrada = in.readLine().trim().split(" ");
        int p = Integer.parseInt(entrada[0]);
        int j1 = Integer.parseInt(entrada[1]);
        int j2 = Integer.parseInt(entrada[2]);
        int r = Integer.parseInt(entrada[3]);
        int a = Integer.parseInt(entrada[4]);

        if (r == 1) {
            if (a == 1) {
                System.out.println("Jogador 2 ganha!");
            } else {
                System.out.println("Jogador 1 ganha!");
            }
        } else {
            if (a == 1) {
                System.out.println("Jogador 1 ganha!");
            } else {
                System.out.printf("Jogador %d ganha!\n", (j1 + j2) % 2 == (1 - p) ? 1 : 2);
            }
        }
    }
}