import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        char[] um = new char[] {'o', 'n', 'e'};
        int N = Integer.parseInt(in.readLine());

        for(int i = 0; i < N; ++i){
            char[] palavra = in.readLine().trim().toCharArray();

            if(palavra.length == 5){
                System.out.println(3);
            }else{
                int semelhancas = 0;
                for(int j = 0; j < 3; ++j){
                    if(palavra[j] == um[j]){
                        semelhancas += 1;
                    }
                }
                if(semelhancas > 1){
                    System.out.println(1);
                }else{
                    System.out.println(2);
                }
            }
        }
    }
}