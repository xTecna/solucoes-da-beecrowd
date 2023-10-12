import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while(in.ready()){
            String frase = in.readLine();

            String resposta = "";
            boolean negrito = false;
            boolean italico = false;
            for(int i = 0; i < frase.length(); ++i){
                if(frase.charAt(i) == '_'){
                    if(italico){
                        resposta += "</i>";
                    }else{
                        resposta += "<i>";
                    }
                    italico = !italico;
                }else if(frase.charAt(i) == '*'){
                    if(negrito){
                        resposta += "</b>";
                    }else{
                        resposta += "<b>";
                    }
                    negrito = !negrito;
                }else{
                    resposta += frase.charAt(i);
                }
            }

            System.out.println(resposta);
        }
    }
}