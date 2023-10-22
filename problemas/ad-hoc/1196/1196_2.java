import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.HashMap;

public class Main {    
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        String teclado = "`1234567890-=QWERTYUIOP[]\\ASDFGHJKL;'ZXCVBNM,./";

        int[] posicoes = new int[255];
        for(int i = 0; i < teclado.length(); ++i){
            posicoes[teclado.charAt(i)] = i;
        }

        while(in.ready()){
            String frase = in.readLine();

            String resposta = "";
            for(int i = 0; i < frase.length(); ++i){
                if(frase.charAt(i) == ' '){
                    resposta += ' ';
                }else{
                    resposta += teclado.charAt(posicoes[frase.charAt(i)] - 1);
                }
            }
            System.out.println(resposta);
        }
    }
}