import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int[] porcoes = {300, 1500, 600, 1000, 150};

        int resposta = 225;
        for(int i = 0; i < 5; ++i){
            int quantidade = Integer.parseInt(in.readLine());
            resposta += quantidade * porcoes[i];
        }

        System.out.println(resposta);
    }
}