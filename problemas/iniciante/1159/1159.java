import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.Math;

public class Main {
    public static int somaPA(int a0){
        a0 += (Math.abs(a0) % 2);
        int an = a0 + 8;
        int n = 5;

        return ((a0 + an) * n) / 2;
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while(in.ready()){
            int X = Integer.parseInt(in.readLine());

            if(X == 0){
                break;
            }

            System.out.println(somaPA(X));
        }
    }
}