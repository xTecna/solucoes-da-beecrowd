import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        String[] entrada = in.readLine().trim().split(" ");
        int A = Integer.parseInt(entrada[0]);
        int B = Integer.parseInt(entrada[1]);
        int C = Integer.parseInt(entrada[2]);

        if (A == B || A == C || B == C || A + B == C || A + C == B || B + C == A) {
            System.out.println("S");
        } else {
            System.out.println("N");
        }
    }
}