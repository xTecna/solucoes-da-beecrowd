import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Locale;

public class Main {
    public static void main(String[] args) throws IOException {
        double S = 0.0;
        for (int i = 1; i < 101; ++i) {
            S += 1.0 / i;
        }
        System.out.println(String.format(Locale.US, "%.2f", S));
    }
}