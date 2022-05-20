import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);
    
        int T = Integer.parseInt(in.readLine());
        for(int i = 0; i < T; ++i){
            String[] entrada = in.readLine().trim().split(" ");
            System.out.println(Integer.parseInt(entrada[0]) + Integer.parseInt(entrada[1]));
        }
    }
}