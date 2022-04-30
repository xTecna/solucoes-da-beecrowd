import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int V = Integer.parseInt(in.readLine());

        int produto = V;
        for(int i = 0; i < 10; ++i){
            System.out.printf("N[%d] = %d\n", i, produto);
            produto <<= 1;
        }
    }
}