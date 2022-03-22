import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Locale;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);
        final double pi = 3.14159;
        
        double raio = Double.parseDouble(in.readLine());
        double area = pi * raio * raio;

        System.out.println(String.format(Locale.US, "A=%.4f", area));
    }
}