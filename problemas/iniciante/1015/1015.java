import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);
        
        String[] entrada = in.readLine().split(" ");
        double x1 = Double.parseDouble(entrada[0]);
        double y1 = Double.parseDouble(entrada[1]);
        
        entrada = in.readLine().split(" ");
        double x2 = Double.parseDouble(entrada[0]);
        double y2 = Double.parseDouble(entrada[1]);
        
        double distancia = Math.sqrt((x2 - x1) * (x2 - x1) + (y2 - y1) * (y2 - y1));
        
        System.out.printf("%.4f\n", distancia);
    }
}