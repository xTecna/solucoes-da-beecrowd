import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);
    
        String[] entrada = in.readLine().trim().split(" ");

        int soma = 0;
        for(int i = 0; i < 4; ++i){
            soma += Integer.parseInt(entrada[i]);
        }

        System.out.println(soma - 3);
    }
}