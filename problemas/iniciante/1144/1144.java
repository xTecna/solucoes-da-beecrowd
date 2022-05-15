import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);
    
        int N = Integer.parseInt(in.readLine());

        for(int i = 1; i <= N; ++i){
            System.out.printf("%d %d %d\n%d %d %d\n", i, i * i, i * i * i, i, i * i + 1, i * i * i + 1);
        }
    }
}