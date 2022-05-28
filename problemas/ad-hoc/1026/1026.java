import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while (in.ready()) {
            String[] entrada = in.readLine().trim().split(" ");

            long a = Long.parseLong(entrada[0]);
            long b = Long.parseLong(entrada[1]);

            System.out.println(a ^ b);
        }
    }
}