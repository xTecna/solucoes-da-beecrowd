import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int N = Integer.parseInt(in.readLine());
        for(int i = 0; i < N; ++i){
            String[] numeros = in.readLine().trim().split(" ");

            String A = numeros[0];
            String B = numeros[1];

            if(B.length() > A.length()){
                System.out.println("nao encaixa");
            }else{
                A = A.substring(A.length() - B.length());

                if(A.equals(B)){
                    System.out.println("encaixa");
                }else{
                    System.out.println("nao encaixa");
                }
            }
        }
    }
}