import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static String format(int x){
        if(x % 10 == 0){
            return String.format("%d", x/10);
        }else{
            return String.format("%d.%d", x/10, x%10);
        }
    }
    
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        for(int i = 0; i <= 20; i += 2){
            for(int j = 10; j <= 30; j += 10){
                System.out.printf("I=%s J=%s\n", format(i), format(j + i));
            }
        }
    }
}