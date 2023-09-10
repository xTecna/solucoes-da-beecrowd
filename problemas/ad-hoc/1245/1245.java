import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.Math;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while(in.ready()){
            int N = Integer.parseInt(in.readLine());

            int[][] sapatos = new int[61][2];
            for(int i = 0; i < N; ++i){
                String[] entrada = in.readLine().trim().split(" ");

                int tamanho = Integer.parseInt(entrada[0]);
                char lado = entrada[1].charAt(0);

                sapatos[tamanho][lado - 'D'] += 1;
            }

            int pares = 0;
            for(int i = 30; i < 61; ++i){
                pares += Math.min(sapatos[i][0], sapatos[i][1]);
            }

            System.out.println(pares);
        }
    }
}