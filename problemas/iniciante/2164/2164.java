import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.Math;

public class Main {
    public static double potencia(double base, int expoente) {
        if (expoente == 1)
            return base;
        if (expoente % 2 == 1)
            return base * potencia(base, expoente - 1);

        double p = potencia(base, expoente / 2);
        return p * p;
    }

    public static double Fibonacci(int n) {
        return (potencia((1 + Math.sqrt(5)) / 2, n) - potencia((1 - Math.sqrt(5)) / 2, n)) / Math.sqrt(5);
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int n = Integer.parseInt(in.readLine());
        System.out.printf("%.1f\n", Fibonacci(n));
    }
}