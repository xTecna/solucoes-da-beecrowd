import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int pares = 0;
        String bits = in.readLine();
        for (int i = 0; i < bits.length(); ++i) {
            pares += bits.charAt(i) == '1' ? 1 : 0;
        }

        System.out.printf("%s%d\n", bits, pares % 2);
    }
}