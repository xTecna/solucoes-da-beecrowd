import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);
        
        String[] entrada = in.readLine().trim().split(" ");
        double A = Double.parseDouble(entrada[0]);
        double B = Double.parseDouble(entrada[1]);
        double C = Double.parseDouble(entrada[2]);
        
        if(A < B + C && B < A + C && C < A + B){
            System.out.printf("Perimetro = %.1f\n", A + B + C);
        }else{
            System.out.printf("Area = %.1f\n", (A + B)/2.0 * C);
        }
    }
}