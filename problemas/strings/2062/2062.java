import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int N = Integer.parseInt(in.readLine());
        String[] palavras = in.readLine().trim().split(" ");

        for(int i = 0; i < N; ++i){
            if(palavras[i].length() == 3){
                if(palavras[i].startsWith("OB")){
                    palavras[i] = "OBI";
                }else if(palavras[i].startsWith("UR")){
                    palavras[i] = "URI";
                }
            }
        }

        System.out.println(String.join(" ", palavras));
    }
}