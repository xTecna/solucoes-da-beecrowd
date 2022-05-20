import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static int converte(String linha) {
        int soma = 0, n = linha.length();

        for (int i = 0; i < n; ++i) {
            if (linha.charAt(i) == '*') {
                soma += 1 << (n - i - 1);
            }
        }

        return soma;
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int soma = 0;

        while (in.ready()) {
            String linha = in.readLine();

            if (linha.equals("caw caw")) {
                System.out.println(soma);
                soma = 0;
            } else {
                soma += converte(linha);
            }
        }
    }
}