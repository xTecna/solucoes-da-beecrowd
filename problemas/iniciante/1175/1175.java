import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);
    
        int[] N = new int[20];

        for(int i = 0; i < 20; ++i){
            N[i] = Integer.parseInt(in.readLine());
        }

        for(int i = 0; i < 10; ++i){
            int temp = N[i];
            N[i] = N[19 - i];
            N[19 - i] = temp;
        }

        for(int i = 0; i < 20; ++i){
            System.out.printf("N[%d] = %d\n", i, N[i]);
        }
    }
}