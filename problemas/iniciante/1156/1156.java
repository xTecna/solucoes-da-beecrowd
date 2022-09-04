import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        double S = 0.0;

        for (int i = 0; i < 20; ++i) {
            S += (double) (2 * i + 1) / (1 << i);
        }

        System.out.printf("%.2f\n", S);
    }
}