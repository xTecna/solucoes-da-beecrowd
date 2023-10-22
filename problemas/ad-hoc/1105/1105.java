import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while(in.ready()){
            String[] BN = in.readLine().trim().split(" ");
            int B = Integer.parseInt(BN[0]);
            int N = Integer.parseInt(BN[1]);

            if(B == 0 && N == 0){
                break;
            }

            String[] entrada = in.readLine().trim().split(" ");
            int[] saldos = new int[B + 1];
            for(int i = 1; i <= B; ++i){
                saldos[i] = Integer.parseInt(entrada[i - 1]);
            }

            for(int i = 0; i < N; ++i){
                String[] DCV = in.readLine().trim().split(" ");
                int D = Integer.parseInt(DCV[0]);
                int C = Integer.parseInt(DCV[1]);
                int V = Integer.parseInt(DCV[2]);

                saldos[D] -= V;
                saldos[C] += V;
            }

            boolean possivel = true;
            for(int i = 1; i <= B; ++i){
                if(saldos[i] < 0){
                    possivel = false;
                    break;
                }
            }

            if(possivel){
                System.out.println("S");
            }else{
                System.out.println("N");
            }
        }
    }
}