import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);
        
        int N = Integer.parseInt(in.readLine());
        
        System.out.println(N);
        
        System.out.println(N/100 + " nota(s) de R$ 100,00");
        N %= 100;
        System.out.println(N/50 + " nota(s) de R$ 50,00");
        N %= 50;
        System.out.println(N/20 + " nota(s) de R$ 20,00");
        N %= 20;
        System.out.println(N/10 + " nota(s) de R$ 10,00");
        N %= 10;
        System.out.println(N/5 + " nota(s) de R$ 5,00");
        N %= 5;
        System.out.println(N/2 + " nota(s) de R$ 2,00");
        N %= 2;
        System.out.println(N + " nota(s) de R$ 1,00");
    }
}