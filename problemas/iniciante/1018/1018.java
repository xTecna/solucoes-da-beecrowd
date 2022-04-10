import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);
        
        int N = Integer.parseInt(in.readLine());
        
        System.out.printf("%d\n", N);
        
        System.out.printf("%d nota(s) de R$ 100,00\n", N/100);
        N %= 100;
        System.out.printf("%d nota(s) de R$ 50,00\n", N/50);
        N %= 50;
        System.out.printf("%d nota(s) de R$ 20,00\n", N/20);
        N %= 20;
        System.out.printf("%d nota(s) de R$ 10,00\n", N/10);
        N %= 10;
        System.out.printf("%d nota(s) de R$ 5,00\n", N/5);
        N %= 5;
        System.out.printf("%d nota(s) de R$ 2,00\n", N/2);
        N %= 2;
        System.out.printf("%d nota(s) de R$ 1,00\n", N);
    }
}