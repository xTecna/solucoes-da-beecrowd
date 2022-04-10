import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.Math;

public class Main {
    public static int numeroImpares(int X, int Y){
        return (Y - X)/2 + 1;
    }
    
    public static int somaPA(int X, int Y){
        return (X + Y) * numeroImpares(X, Y)/2;
    }
    
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
        
        System.out.println(somaPA(X, Y));
    }
}