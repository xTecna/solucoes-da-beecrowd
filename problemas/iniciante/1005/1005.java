import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        double A = Double.parseDouble(in.readLine());
        double B = Double.parseDouble(in.readLine());
        
        double media = (3.5 * A + 7.5 * B)/11;

        System.out.printf("MEDIA = %.5f\n", media);
    }
}