import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        double S = 0.0;
        for (int i = 1; i < 101; ++i) {
            S += 1.0 / i;
        }
        System.out.printf("%.2f\n", S);
    }
}