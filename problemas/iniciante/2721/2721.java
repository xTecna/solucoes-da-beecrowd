import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        String[] renas = new String[] { "Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner",
                "Blitzen" };

        String[] entrada = in.readLine().trim().split(" ");
        int soma = 0;
        for (int i = 0; i < 9; ++i) {
            soma += Integer.parseInt(entrada[i]);
        }

        System.out.println(renas[soma % 9]);
    }
}