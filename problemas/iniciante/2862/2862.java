import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int C = Integer.parseInt(in.readLine());
        for(int i = 0; i < C; ++i){
            int N = Integer.parseInt(in.readLine());

            if(N > 8000){
                System.out.println("Mais de 8000!");
            }else{
                System.out.println("Inseto!");
            }
        }
    }
}