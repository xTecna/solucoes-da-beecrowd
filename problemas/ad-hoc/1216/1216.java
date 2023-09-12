import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int pessoas = 0;
        double media = 0.0;
        while(in.ready()){
            String nome = in.readLine();
            media += Double.parseDouble(in.readLine());
            pessoas += 1;
        }

        media /= pessoas;
        System.out.printf("%.1f\n", media);
    }
}