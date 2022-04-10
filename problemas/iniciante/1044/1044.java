import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);
        
        String[] entrada = in.readLine().trim().split(" ");
        int A = Integer.parseInt(entrada[0]);
        int B = Integer.parseInt(entrada[1]);
        
        if(A < B){
            int temp = A;
            A = B;
            B = temp;
        }
        
        if(A % B == 0)
            System.out.printf("Sao Multiplos\n");
        else
            System.out.printf("Nao sao Multiplos\n");
    }
}