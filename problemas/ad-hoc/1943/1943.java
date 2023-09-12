import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int K = Integer.parseInt(in.readLine());
        
        if(K == 1)          System.out.println("Top 1");
        else if(K <= 3)     System.out.println("Top 3");
        else if(K <= 5)     System.out.println("Top 5");
        else if(K <= 10)    System.out.println("Top 10");
        else if(K <= 25)    System.out.println("Top 25");
        else if(K <= 50)    System.out.println("Top 50");
        else                System.out.println("Top 100");
    }
}