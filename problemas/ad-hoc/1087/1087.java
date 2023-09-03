import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.Math;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while(in.ready()){
            String[] partes = in.readLine().trim().split(" ");

            int X1 = Integer.parseInt(partes[0]);
            int Y1 = Integer.parseInt(partes[1]);
            int X2 = Integer.parseInt(partes[2]);
            int Y2 = Integer.parseInt(partes[3]);

            if(X1 == 0 && Y1 == 0 && X2 == 0 && Y2 == 0){
                break;
            }

            if(X1 == X2 && Y1 == Y2){
                System.out.println("0");
            }else if(X1 == X2 || Y1 == Y2 || Math.abs(X1 - X2) == Math.abs(Y1 - Y2)){
                System.out.println("1");
            }else{
                System.out.println("2");
            }
        }
    }
}