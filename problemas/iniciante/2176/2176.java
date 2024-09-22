import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int pares = 0;
        String entrada = in.readLine();
        for (int i = 0; i < entrada.length(); ++i) {
            pares += entrada.charAt(i) == '1' ? 1 : 0;
        }

        System.out.printf("%s%d\n", entrada, pares % 2);
    }
}