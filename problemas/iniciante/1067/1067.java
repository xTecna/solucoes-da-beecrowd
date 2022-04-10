import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);
        
        int X = Integer.parseInt(in.readLine());
        
        for(int i = 1; i <= X; i+=2){
            System.out.println(i);
        }
    }
}