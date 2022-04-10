import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.Math;

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
        X += (Math.abs(X) % 2) + 1;
        Y -= (Math.abs(Y) % 2) + 1;
        
        int soma = 0;
        for(int i = X; i <= Y; i += 2){
            soma += i;
        }

        System.out.println(soma);
    }
}