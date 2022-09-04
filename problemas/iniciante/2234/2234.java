import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        String[] entrada = in.readLine().trim().split(" ");
        int H = Integer.parseInt(entrada[0]);
        int P = Integer.parseInt(entrada[1]);

        System.out.printf("%.2f\n", (double) H / P);
    }
}