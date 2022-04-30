import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);
    
        int N = Integer.parseInt(in.readLine());

        int i, j;
        for(i = 0; i < N; ++i){
            for(j = 0; j < 3; ++j){
                System.out.printf("%d ", 4 * i + 1 + j);
            }
            System.out.printf("PUM\n");
        }
    }
}