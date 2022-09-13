import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int saquesTotais = 0, bloqueiosTotais = 0, ataquesTotais = 0;
        int saquesSucedidos = 0, bloqueiosSucedidos = 0, ataquesSucedidos = 0;

        int N = Integer.parseInt(in.readLine());
        for (int i = 0; i < N; ++i) {
            String nome = in.readLine();

            String[] entrada = in.readLine().trim().split(" ");
            saquesTotais += Integer.parseInt(entrada[0]);
            bloqueiosTotais += Integer.parseInt(entrada[1]);
            ataquesTotais += Integer.parseInt(entrada[2]);

            entrada = in.readLine().trim().split(" ");
            saquesSucedidos += Integer.parseInt(entrada[0]);
            bloqueiosSucedidos += Integer.parseInt(entrada[1]);
            ataquesSucedidos += Integer.parseInt(entrada[2]);
        }

        System.out.printf("Pontos de Saque: %.2f %%.\n", 100.0 * saquesSucedidos / saquesTotais);
        System.out.printf("Pontos de Bloqueio: %.2f %%.\n", 100.0 * bloqueiosSucedidos / bloqueiosTotais);
        System.out.printf("Pontos de Ataque: %.2f %%.\n", 100.0 * ataquesSucedidos / ataquesTotais);
    }
}