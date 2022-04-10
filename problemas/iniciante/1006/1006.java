import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        double A = Double.parseDouble(in.readLine());
        double B = Double.parseDouble(in.readLine());
        double C = Double.parseDouble(in.readLine());
        
        double media = (2 * A + 3 * B + 5 * C)/10;

        System.out.printf("MEDIA = %.1f\n", media);
    }
}