import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static char conceito(int nota) {
        if (nota > 85) {
            return 'A';
        }
        if (nota > 60) {
            return 'B';
        }
        if (nota > 35) {
            return 'C';
        }
        if (nota > 0) {
            return 'D';
        }
        return 'E';
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int N = Integer.parseInt(in.readLine());
        System.out.println(conceito(N));
    }
}