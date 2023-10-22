import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.Math;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int N = Integer.parseInt(in.readLine());
        for(int k = 0; k < N; ++k){
            String[] QTS = in.readLine().trim().split(" ");

            int QT = Integer.parseInt(QTS[0]);
            int S = Integer.parseInt(QTS[1]);

            String[] palpites = in.readLine().trim().split(" ");
            int melhor_palpite = 0;
            int melhor_aproximacao = Math.abs(Integer.parseInt(palpites[0]) - S);
            for(int i = 1; i < QT; ++i){
                int aproximacao = Math.abs(Integer.parseInt(palpites[i]) - S);
                if(aproximacao < melhor_aproximacao){
                    melhor_palpite = i;
                    melhor_aproximacao = aproximacao;
                }
            }

            System.out.println(melhor_palpite + 1);
        }
    }
}