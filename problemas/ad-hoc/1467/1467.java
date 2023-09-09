import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while(in.ready()){
            String[] entrada = in.readLine().trim().split(" ");

            int A = Integer.parseInt(entrada[0]);
            int B = Integer.parseInt(entrada[1]);
            int C = Integer.parseInt(entrada[2]);

            if(A + B + C == 1){
                if(A == 1)  System.out.println("A");
                if(B == 1)  System.out.println("B");
                if(C == 1)  System.out.println("C");
            }else if(A + B + C == 2){
                if(A == 0)  System.out.println("A");
                if(B == 0)  System.out.println("B");
                if(C == 0)  System.out.println("C");
            }else{
                System.out.println("*");
            }
        }
    }
}