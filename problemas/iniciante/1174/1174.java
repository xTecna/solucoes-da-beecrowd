import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Locale;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);
    
        for(int i = 0; i < 100; ++i){
            double n = Double.parseDouble(in.readLine());

            if (n <= 10.0){
                System.out.println(String.format(Locale.US, "A[%d] = %.1f", i, n));
            }
        }
    }
}