import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.Math;

public class Main {
    public static double limiteInferior(int n) {
        return n / Math.log(n);
    }

    public static double limiteSuperior(int n) {
        return 1.25506 * n / Math.log(n);
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int n = Integer.parseInt(in.readLine());
        System.out.printf("%.1f %.1f\n", limiteInferior(n), limiteSuperior(n));
    }
}