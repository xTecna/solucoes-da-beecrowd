import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while(in.ready()){
            String[] palavras = in.readLine().toLowerCase().trim().split(" ");

            int aliteracoes = 0;

            char letraAtual = palavras[0].charAt(0);
            int tamanhoAliteracao = 1;
            for(int i = 1; i < palavras.length; ++i){
                if(palavras[i].charAt(0) != letraAtual){
                    if(tamanhoAliteracao > 1){
                        aliteracoes += 1;
                    }
                    letraAtual = palavras[i].charAt(0);
                    tamanhoAliteracao = 1;
                }else{
                    tamanhoAliteracao += 1;
                }
            }
            if(tamanhoAliteracao > 1){
                aliteracoes += 1;
            }

            System.out.println(aliteracoes);
        }
    }
}