import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while(in.ready()){
            String[] entrada = in.readLine().trim().split(" ");

            int a = Integer.parseInt(entrada[0]);
            int b = Integer.parseInt(entrada[1]);

            if(a == 0 && b == 0){
                break;
            }

            int resposta = 0;
            int carry = 0;
            while(a > 0 && b > 0){
                if(a % 10 + b % 10 + carry > 9){
                    carry = 1;
                    ++resposta;
                }else{
                    carry = 0;
                }

                a /= 10;
                b /= 10;
            }

            while(a > 0){
                if(a % 10 + carry > 9){
                    carry = 1;
                    ++resposta;
                }else{
                    carry = 0;
                }

                a /= 10;
            }

            while(b > 0){
                if(b % 10 + carry > 9){
                    carry = 1;
                    ++resposta;
                }else{
                    carry = 0;
                }

                b /= 10;
            }

            if(resposta == 0){
                System.out.println("No carry operation.");
            }else if(resposta == 1){
                System.out.println("1 carry operation.");
            }else{
                System.out.printf("%d carry operations.\n", resposta);
            }
        }
    }
}