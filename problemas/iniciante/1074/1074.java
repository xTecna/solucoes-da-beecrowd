import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);
        
        int N, X;

        N = Integer.parseInt(in.readLine());

        for(int i = 0; i < N; ++i){
            X = Integer.parseInt(in.readLine());

            if(X == 0){
                System.out.println("NULL");
            }else if(X > 0){
                if(X % 2 == 1){
                    System.out.print("ODD");
                }else{
                    System.out.print("EVEN");
                }
                System.out.println(" POSITIVE");
            }else{
                if(-X % 2 == 1){
                    System.out.print("ODD");
                }else{
                    System.out.print("EVEN");
                }
                System.out.println(" NEGATIVE");
            }
        }
    }
}