import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int N = Integer.parseInt(in.readLine());
        for(int i = 0; i < N; ++i){
            String[] AB = in.readLine().trim().split(" ");
            int A = Integer.parseInt(AB[0]);
            int B = Integer.parseInt(AB[1]);

            boolean encaixa = true;
            while(A > 0 && B > 0){
                if(A % 10 != B % 10){
                    encaixa = false;
                    break;
                }

                A /= 10;
                B /= 10;
            }

            if(B > 0)   encaixa = false;

            if(encaixa){
                System.out.println("encaixa");
            }else{
                System.out.println("nao encaixa");
            }
        }
    }
}