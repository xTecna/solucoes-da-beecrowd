import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while(in.ready()){
            int N = Integer.parseInt(in.readLine());

            if(N == 0){
                break;
            }

            for(int k = 0; k < N; ++k){
                String[] folha = in.readLine().trim().split(" ");

                int opcao = -1;
                int corretos = 0;
                for(int i = 0; i < 5; ++i){
                    if(Integer.parseInt(folha[i]) <= 127){
                        opcao = i;
                        ++corretos;
                    }
                }

                if(corretos == 1){
                    System.out.println((char)(opcao + (int)'A'));
                }else{
                    System.out.println("*");
                }
            }
        }
    }
}