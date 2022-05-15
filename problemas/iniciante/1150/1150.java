import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int X = Integer.parseInt(in.readLine());
        int Z = 0;
        while (in.ready()) {
            Z = Integer.parseInt(in.readLine());

            if (Z > X) {
                break;
            }
        }

        int resposta = 1, soma = X;
        while (soma <= Z) {
            soma += X + resposta;
            ++resposta;
        }

        System.out.println(resposta);
    }
}