import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);
    
        int N = Integer.parseInt(in.readLine());
        for(int i = 1; i < 4 * N; i += 4){
            System.out.printf("%d %d %d PUM\n", i, i + 1, i + 2);
        }
    }
}