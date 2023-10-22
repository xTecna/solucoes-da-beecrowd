import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static int valor(char simbolo){
        if(Character.isLetter(simbolo)){
            return simbolo - 'a' + 10;
        }else{
            return simbolo - '0';
        }
    }

    public static char simbolo(int valor){
        if(valor > 9){
            return (char)(valor - 10 + 'a');
        }else{
            return (char)(valor + '0');
        }
    }
    
    public static int converteParaDecimal(String numero, int base){
        int potencia = 1, resposta = 0;

        for(int i = numero.length() - 1; i > -1; --i){
            resposta += valor(numero.charAt(i)) * potencia;
            potencia *= base;
        }

        return resposta;
    }

    public static String converteDeDecimal(int decimal, int base){
        String resposta = "";

        while(decimal > 0){
            resposta = simbolo(decimal % base) + resposta;
            decimal /= base;
        }

        return resposta;
    }
    
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int N = Integer.parseInt(in.readLine());
        for(int k = 1; k <= N; ++k){
            String[] partes = in.readLine().trim().split(" ");

            System.out.printf("Case %d:\n", k);
            if(partes[1].equals("bin")){
                int dec = converteParaDecimal(partes[0], 2);
                System.out.printf("%d dec\n", dec);
                System.out.printf("%s hex\n\n", converteDeDecimal(dec, 16));
            }else if(partes[1].equals("dec")){
                int dec = converteParaDecimal(partes[0], 10);
                System.out.printf("%s hex\n", converteDeDecimal(dec, 16));
                System.out.printf("%s bin\n\n", converteDeDecimal(dec, 2));
            }else if(partes[1].equals("hex")){
                int dec = converteParaDecimal(partes[0], 16);
                System.out.printf("%d dec\n", dec);
                System.out.printf("%s bin\n\n", converteDeDecimal(dec, 2));
            }
        }
    }
}