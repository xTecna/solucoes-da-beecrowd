import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static int converte(String jogada) {
        if (jogada.equals("pedra")) {
            return 0;
        } else if (jogada.equals("papel")) {
            return 1;
        }
        return 2;
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int[][] regras = new int[][] {
                { 0, 1, -1 }, // pedra
                { -1, 0, -1 }, // papel
                { 1, 1, 0 }, // ataque aereo
        };

        int N = Integer.parseInt(in.readLine());
        for (int i = 0; i < N; ++i) {
            int jogada1 = converte(in.readLine());
            int jogada2 = converte(in.readLine());

            if (regras[jogada1][jogada2] == 0) {
                switch (jogada1) {
                    case 0:
                        System.out.println("Sem ganhador");
                        break;
                    case 1:
                        System.out.println("Ambos venceram");
                        break;
                    case 2:
                        System.out.println("Aniquilacao mutua");
                        break;
                }
            } else {
                System.out.printf("Jogador %d venceu\n", regras[jogada1][jogada2] == 1 ? 1 : 2);
            }
        }
    }
}