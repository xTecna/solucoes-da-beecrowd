import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);
    
        int k = 7;
        for(int i = 1; i < 10; i += 2){
            for(int j = k; j > k - 3; --j){
                System.out.printf("I=%d J=%d\n", i, j);
            }
            k += 2;
        }
    }
}