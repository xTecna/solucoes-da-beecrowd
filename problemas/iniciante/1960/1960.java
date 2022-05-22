import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static String converte(int digito, String um, String cinco, String dez) {
        if (digito == 9) {
            return um + dez;
        } else if (digito == 4) {
            return um + cinco;
        }

        String resposta = "";

        if (digito > 4) {
            resposta = cinco;
            digito -= 5;
        }
        for (int i = 0; i < digito; ++i) {
            resposta += um;
        }

        return resposta;
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int N = Integer.parseInt(in.readLine());

        System.out.printf("%s", converte(N / 100, "C", "D", "M"));
        N %= 100;
        System.out.printf("%s", converte(N / 10, "X", "L", "C"));
        N %= 10;
        System.out.printf("%s\n", converte(N, "I", "V", "X"));
    }
}