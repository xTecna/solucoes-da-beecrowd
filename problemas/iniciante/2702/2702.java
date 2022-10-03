import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        String[] disponiveis = in.readLine().trim().split(" ");
        String[] requisitadas = in.readLine().trim().split(" ");

        int resposta = 0;
        for (int i = 0; i < 3; ++i) {
            int disponivel = Integer.parseInt(disponiveis[i]);
            int requisitada = Integer.parseInt(requisitadas[i]);

            resposta += (requisitada > disponivel) ? (requisitada - disponivel) : 0;
        }

        System.out.println(resposta);
    }
}