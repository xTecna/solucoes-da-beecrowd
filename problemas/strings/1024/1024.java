import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int T = Integer.parseInt(in.readLine());
        for (int i = 0; i < T; ++i) {
            char[] texto = in.readLine().trim().toCharArray();

            for (int j = 0; j < texto.length; ++j) {
                if (Character.isAlphabetic(texto[j])) {
                    texto[j] += 3;
                }
            }
            for (int j = 0; j < texto.length / 2; ++j) {
                char temp = texto[j];
                texto[j] = texto[texto.length - 1 - j];
                texto[texto.length - 1 - j] = temp;
            }
            for (int j = texto.length / 2; j < texto.length; ++j) {
                texto[j] -= 1;
            }

            System.out.println(texto);
        }
    }
}