import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static int[] leds = new int[] {6, 2, 5, 5, 4, 5, 6, 3, 7, 6, 6};
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int N = Integer.parseInt(in.readLine());
        for(int i = 0; i < N; ++i){
            char[] V = in.readLine().trim().toCharArray();

            int resposta = 0;
            for(int j = 0; j < V.length; ++j){
                resposta += leds[V[j] - ((int)'0')];
            }

            System.out.printf("%d leds\n", resposta);
        }
    }
}