import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int N = Integer.parseInt(in.readLine());
        for(int i = 0; i < N; ++i){
            int resposta = 0;
            int parenteses = 0;

            char[] expressao = in.readLine().trim().toCharArray();
            for(int j = 0; j < expressao.length; ++j){
                if(expressao[j] == '<'){
                    parenteses += 1;
                }else if(expressao[j] == '>' && parenteses > 0){
                    parenteses -= 1;
                    resposta += 1;
                }
            }

            System.out.println(resposta);
        }
    }
}