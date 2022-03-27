import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Locale;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);
        
        String[] entrada = in.readLine().trim().split(" ");
        double A = Double.parseDouble(entrada[0]);
        double B = Double.parseDouble(entrada[1]);
        double C = Double.parseDouble(entrada[2]);
        
        double delta = B * B - 4 * A * C;
        
        if(A != 0 && delta > -1){
            double R1 = (-B + Math.sqrt(delta))/(2 * A);
            double R2 = (-B - Math.sqrt(delta))/(2 * A);
            
            System.out.println(String.format(Locale.US, "R1 = %.5f", R1));
            System.out.println(String.format(Locale.US, "R2 = %.5f", R2));
        }else{
            System.out.println("Impossivel calcular");
        }
    }
}