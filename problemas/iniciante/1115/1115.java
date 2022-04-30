import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);
    
        while(in.ready()){
            String[] entrada = in.readLine().trim().split(" ");
            int X = Integer.parseInt(entrada[0]), Y = Integer.parseInt(entrada[1]);

            if(X == 0 || Y == 0){
                break;
            }

            if(X > 0){
                if(Y > 0){
                    System.out.println("primeiro");
                }else{
                    System.out.println("quarto");
                }
            }else{
                if(Y > 0){
                    System.out.println("segundo");
                }else{
                    System.out.println("terceiro");
                }
            }
        }
    }
}