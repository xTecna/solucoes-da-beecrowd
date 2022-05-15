import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);
    
        while(in.ready()){
            int X = Integer.parseInt(in.readLine());

            if(X == 0){
                break;
            }

            String[] numeros = new String[X];
            for(int i = 1; i <= X; ++i){
                numeros[i - 1] = Integer.toString(i);
            }

            System.out.println(String.join(" ", numeros));
        }
    }
}