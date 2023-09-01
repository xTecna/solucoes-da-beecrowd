import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Stack;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while(in.ready()){
            char[] expressao = in.readLine().trim().toCharArray();

            int i;
            Stack<Character> pilha;

            for(i = 0; i < expressao.length; ++i){
                if(expressao[i] == '('){
                    pilha.push('(');
                }else if(expressao[i] == ')'){
                    if(pilha.size() == 0){
                        break;
                    }
                    pilha.pop();
                }
            }

            if(i == expressao.length && pilha.size() == 0){
                System.out.println("correct");
            }else{
                System.out.println("incorrect");
            }
        }
    }
}