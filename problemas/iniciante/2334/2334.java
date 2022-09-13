import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Arrays;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while (in.ready()) {
            String entrada = in.readLine();

            if (entrada.equals("-1")) {
                break;
            }

            char[] P = entrada.trim().toCharArray();

            if (!entrada.equals("0")) {
                int n = P.length - 1;
                while (P[n] == '0') {
                    P[n--] = '9';
                }
                --P[n];
            }

            if (entrada.length() > 1 && P[0] == '0') {
                P = Arrays.copyOfRange(P, 1, P.length);
            }

            System.out.println(P);
        }
    }
}