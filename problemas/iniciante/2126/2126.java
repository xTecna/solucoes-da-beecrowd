import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int k = 0;
        while (in.ready()) {
            String N1 = in.readLine();
            String N2 = in.readLine();

            int qtd = 0, pos = -1, p = N2.indexOf(N1);
            while (p != -1) {
                ++qtd;
                pos = p;
                p = N2.indexOf(N1, p + 1);
            }

            System.out.printf("Caso #%d:\n", ++k);
            if (qtd == 0) {
                System.out.println("Nao existe subsequencia\n");
            } else {
                System.out.printf("Qtd.Subsequencias: %d\n", qtd);
                System.out.printf("Pos: %d\n\n", pos + 1);
            }
        }
    }
}