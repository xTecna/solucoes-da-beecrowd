import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        String T = in.readLine();

        String[] entrada = in.readLine().trim().split(" ");

        int contador = 0;
        for (int i = 0; i < 5; ++i) {
            if (entrada[i].equals(T)) {
                ++contador;
            }
        }

        System.out.println(contador);
    }
}