import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int N = Integer.parseInt(in.readLine());
        for(int i = 0; i < N; ++i){
            String sequencia = in.readLine().trim();

            int a = sequencia.charAt(0) - '0';
            int b = sequencia.charAt(2) - '0';

            if(a == b){
                System.out.println(a * b);
            }else if(Character.isUpperCase(sequencia.charAt(1))){
                System.out.println(b - a);
            }else{
                System.out.println(a + b);
            }
        }
    }
}