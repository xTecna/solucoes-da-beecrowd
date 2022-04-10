import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);
        
        double PI = 3.14159;
        double R = Double.parseDouble(in.readLine().trim());

        double volume = 4.0/3.0 * PI * R * R * R;

        System.out.printf("VOLUME = %.3f\n", volume);
    }
}