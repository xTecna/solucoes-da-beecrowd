import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);
        
        int X = Integer.parseInt(in.readLine());
        X += 1 - (X % 2);

        for(int i = 0; i < 12; i += 2){
            System.out.println(X + i);
        }
    }
}