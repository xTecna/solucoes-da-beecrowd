import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        String[] numeros = in.readLine().trim().split(" ");
        
        for(int i = 0; i < 4; ++i){
            if(Integer.parseInt(numeros[i]) == 1){
                System.out.println(i + 1);
                break;
            }
        }
    }
}