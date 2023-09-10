import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int N = Integer.parseInt(in.readLine());
        for(int k = 0; k < N; ++k){
            int K = Integer.parseInt(in.readLine());

            boolean mesmoIdioma = true;
            String idioma = in.readLine();
            for(int i = 1; i < K; ++i){
                String S = in.readLine();

                if(!S.equals(idioma)){
                    mesmoIdioma = false;
                }
            }

            if(mesmoIdioma){
                System.out.println(idioma);
            }else{
                System.out.println("ingles");
            }
        }
    }
}