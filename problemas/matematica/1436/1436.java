import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int T = Integer.parseInt(in.readLine());
        for(int k = 1; k <= T; ++k){
            String[] idades = in.readLine().trim().split(" ");

            System.out.printf("Case %d: %s\n", k, idades[((idades.length - 1) / 2) + 1]);
        }
    }
}