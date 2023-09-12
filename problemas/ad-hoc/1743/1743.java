import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int X = 0;
        String[] Xs = in.readLine().trim().split(" ");
        for(int i = 0; i < 5; ++i){
            X *= 2;
            X += Integer.parseInt(Xs[i]);
        }

        int Y = 0;
        String[] Ys = in.readLine().trim().split(" ");
        for(int i = 0; i < 5; ++i){
            Y *= 2;
            Y += Integer.parseInt(Ys[i]);
        }

        if((X ^ Y) == 31){
            System.out.println("Y");
        }else{
            System.out.println("N");
        }
    }
}