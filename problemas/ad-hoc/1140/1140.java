import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while(in.ready()){
            String frase = in.readLine().toLowerCase();

            if(frase.equals("*")){
                break;
            }

            String[] palavras = frase.split(" ");
            char letra = palavras[0].charAt(0);

            boolean tautograma = true;
            for(int i = 0; i < palavras.length; ++i){
                if(palavras[i].charAt(0) != letra){
                    tautograma = false;
                    break;
                }
            }

            if(tautograma){
                System.out.println("Y");
            }else{
                System.out.println("N");
            }
        }
    }
}