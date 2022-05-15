import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Locale;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);
    
        int N = Integer.parseInt(in.readLine());

        for(int i = 0; i < N; ++i){
            String[] entrada = in.readLine().trim().split(" ");

            int X = Integer.parseInt(entrada[0]);
            int Y = Integer.parseInt(entrada[1]);

            if(Y == 0){
                System.out.println("divisao impossivel");
            }else{
                System.out.println(String.format(Locale.US, "%.1f", (double)X/Y));
            }
        }
    }
}