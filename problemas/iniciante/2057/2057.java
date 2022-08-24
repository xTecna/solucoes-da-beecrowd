import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        String[] entrada = in.readLine().trim().split(" ");
        System.out.println(
                (24 + Integer.parseInt(entrada[0]) + Integer.parseInt(entrada[1]) + Integer.parseInt(entrada[2])) % 24);
    }
}