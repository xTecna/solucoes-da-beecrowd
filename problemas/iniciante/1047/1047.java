import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);
    
        String[] entrada = in.readLine().trim().split(" ");

        int h_inicial = Integer.parseInt(entrada[0]);
        int m_inicial = Integer.parseInt(entrada[1]);
        int h_final = Integer.parseInt(entrada[2]);
        int m_final = Integer.parseInt(entrada[3]);

        int comeco = h_inicial * 60 + m_inicial;
        int fim = h_final * 60 + m_final;

        if(fim <= comeco){
            fim += 24 * 60;
        }

        System.out.printf("O JOGO DUROU %d HORA(S) E %d MINUTO(S)\n", (fim - comeco) / 60, (fim - comeco) % 60);
    }
}