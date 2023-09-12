import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.HashSet;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int N = Integer.parseInt(in.readLine());
        for(int i = 0; i < N; ++i){
            String frase = in.readLine();

            HashSet<Character> letras = new HashSet<Character>();
            for(int j = 0; j < frase.length(); ++j){
                if(Character.isAlphabetic(frase.charAt(j))){
                    letras.add(frase.charAt(j));
                }
            }

            if(letras.size() == 26){
                System.out.println("frase completa");
            }else if(letras.size() >= 13){
                System.out.println("frase quase completa");
            }else{
                System.out.println("frase mal elaborada");
            }
        }
    }
}