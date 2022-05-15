import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static int converte(int dia, int hora, int minuto, int segundo){
        return (24 * 60 * 60) * dia + (60 * 60) * hora + 60 * minuto + segundo;
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);
    
        String[] entrada;
        int d_inicial, h_inicial, m_inicial, s_inicial, d_final, h_final, m_final, s_final;

        d_inicial = Integer.parseInt(in.readLine().split(" ")[1]);
        entrada = in.readLine().split(":");
        h_inicial = Integer.parseInt(entrada[0].trim());
        m_inicial = Integer.parseInt(entrada[1].trim());
        s_inicial = Integer.parseInt(entrada[2].trim());
        d_final = Integer.parseInt(in.readLine().split(" ")[1]);
        entrada = in.readLine().split(":");
        h_final = Integer.parseInt(entrada[0].trim());
        m_final = Integer.parseInt(entrada[1].trim());
        s_final = Integer.parseInt(entrada[2].trim());

        int comeco = converte(d_inicial, h_inicial, m_inicial, s_inicial);
        int fim = converte(d_final, h_final, m_final, s_final);

        int duracao = fim - comeco;

        System.out.printf("%d dia(s)\n", duracao / (24 * 60 * 60));
        duracao %= (24 * 60 * 60);
        System.out.printf("%d hora(s)\n", duracao / (60 * 60));
        duracao %= (60 * 60);
        System.out.printf("%d minuto(s)\n", duracao / 60);
        duracao %= 60;
        System.out.printf("%d segundo(s)\n", duracao);
    }
}