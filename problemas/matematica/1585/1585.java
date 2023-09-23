import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int N = Integer.parseInt(in.readLine());
        for(int i = 0; i < N; ++i){
            String[] entrada = in.readLine().trim().split(" ");

            int x = Integer.parseInt(entrada[0]);
            int y = Integer.parseInt(entrada[1]);

            System.out.printf("%d cm2\n", (x * y) / 2);
        }
    }
}