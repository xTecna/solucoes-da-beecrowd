import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while(in.ready()){
            char[] expressao = in.readLine().trim().toCharArray();

            int i;
            int parenteses = 0;
            for(i = 0; i < expressao.length; ++i){
                if(expressao[i] == '('){
                    parenteses += 1;
                }else if(expressao[i] == ')'){
                    if(parenteses == 0){
                        break;
                    }
                    parenteses -= 1;
                }
            }

            if(i == expressao.length && parenteses == 0){
                System.out.println("correct");
            }else{
                System.out.println("incorrect");
            }
        }
    }
}