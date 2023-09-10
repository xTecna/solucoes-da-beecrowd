import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.math.BigInteger;

public class Main {
    public static BigInteger potencia(BigInteger base, int expoente){
        if(expoente == 1)       return base;
        if(expoente % 2 == 1)   return base.multiply(potencia(base, expoente - 1));

        BigInteger p = potencia(base, expoente / 2);
        return p.multiply(p);
    }

    public static BigInteger somaPG(int n){
        BigInteger p = potencia(new BigInteger("2"), n);
        return p.subtract(new BigInteger("1"));
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int N = Integer.parseInt(in.readLine());
        for(int i = 0; i < N; ++i){
            int X = Integer.parseInt(in.readLine());

            BigInteger resposta = somaPG(X);
            resposta = resposta.divide(new BigInteger("12000"));
            System.out.printf("%s kg\n", resposta.toString());
        }
    }
}