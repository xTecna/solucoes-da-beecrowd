import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static int max(int a, int b){
        return (a + b + Math.abs(a - b))/2;
    }
    
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);
        
        int X = Integer.parseInt(in.readLine());
        double Y = Double.parseDouble(in.readLine());
        
        double consumo = X/Y;
        
        System.out.printf("%.3f km/l\n", consumo);
    }
}