import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);
    
        int X = Integer.parseInt(in.readLine());
        int Y = Integer.parseInt(in.readLine());

        if(X > Y){
            int temp = X;
            X = Y;
            Y = temp;
        }

        for(int i = X + 1; i < Y; ++i){
            if(i % 5 > 1 && i % 5 < 4){
                System.out.println(i);
            }
        }
    }
}