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
        
        String[] entrada = in.readLine().trim().split(" ");
        int a = Integer.parseInt(entrada[0]);
        int b = Integer.parseInt(entrada[1]);
        int c = Integer.parseInt(entrada[2]);
        
        System.out.printf("%d eh o maior\n", max(a, max(b, c)));
    }
}