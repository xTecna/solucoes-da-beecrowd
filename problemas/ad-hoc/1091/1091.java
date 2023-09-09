import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while(in.ready()){
            int K = Integer.parseInt(in.readLine());

            if(K == 0){
                break;
            }

            String[] numeros = in.readLine().trim().split(" ");
            int N = Integer.parseInt(numeros[0]);
            int M = Integer.parseInt(numeros[1]);
            for(int k = 0; k < K; ++k){
                numeros = in.readLine().trim().split(" ");
                int X = Integer.parseInt(numeros[0]) - N;
                int Y = Integer.parseInt(numeros[1]) - M;

                if(X > 0){
                    if(Y > 0)       System.out.println("NE");
                    else if(Y < 0)  System.out.println("SE");
                    else            System.out.println("divisa");
                }else if(X < 0){
                    if(Y > 0)       System.out.println("NO");
                    else if(Y < 0)  System.out.println("SO");
                    else            System.out.println("divisa");
                }else{
                    System.out.println("divisa");
                }
            }
        }
    }
}