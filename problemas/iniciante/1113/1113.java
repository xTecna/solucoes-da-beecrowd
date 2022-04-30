import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);
    
        while(in.ready()){
            String[] entrada = in.readLine().trim().split(" ");
            int X = Integer.parseInt(entrada[0]);
            int Y = Integer.parseInt(entrada[1]);

            if(X == Y){
                break;
            }

            if(X < Y){
                System.out.println("Crescente");
            }else{
                System.out.println("Decrescente");
            }
        }
    }
}