import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int N = Integer.parseInt(in.readLine());

        int coelhos = 0;
        int ratos = 0;
        int sapos = 0;
        for (int i = 0; i < N; ++i) {
            String[] entrada = in.readLine().trim().split(" ");
            int Quantia = Integer.parseInt(entrada[0]);
            String Tipo = entrada[1];

            if (Tipo.equals("C")) {
                coelhos += Quantia;
            } else if (Tipo.equals("R")) {
                ratos += Quantia;
            } else if (Tipo.equals("S")) {
                sapos += Quantia;
            }
        }
        int total = coelhos + ratos + sapos;

        System.out.printf("Total: %d cobaias\n", total);
        System.out.printf("Total de coelhos: %d\n", coelhos);
        System.out.printf("Total de ratos: %d\n", ratos);
        System.out.printf("Total de sapos: %d\n", sapos);
        System.out.printf("Percentual de coelhos: %.2f %%\n", 100.0 * coelhos / total);
        System.out.printf("Percentual de ratos: %.2f %%\n", 100.0 * ratos / total);
        System.out.printf("Percentual de sapos: %.2f %%\n", 100.0 * sapos / total);
    }
}