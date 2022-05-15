import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Locale;

public class Main {
    public static void main(String[] args) throws IOException {
        double S = 0.0;

        for (int i = 0; i < 20; ++i) {
            S += (double) (2 * i + 1) / (1 << i);
        }

        System.out.println(String.format(Locale.US, "%.2f", S));
    }
}