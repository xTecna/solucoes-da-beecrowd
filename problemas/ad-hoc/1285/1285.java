import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.Math;

public class Main {
    public static int[] resposta;
    
    public static boolean repetido(int n){
        boolean[] digitos = new boolean[10];
        for(int i = 0; i < 10; ++i){
            digitos[i] = false;
        }

        while(n > 0){
            if(digitos[n % 10]){
                return true;
            }
            digitos[n % 10] = true;
            n /= 10;
        }

        return false;
    }

    public static void preCalcula(){
        resposta = new int[5001];

        resposta[0] = 0;
        for(int i = 1; i < 5001; ++i){
            resposta[i] = resposta[i - 1];
            if(!repetido(i)){
                resposta[i] += 1;
            }
        }
    }

    public static int digitosDiferentes(int a, int b){
        return resposta[b] - resposta[a - 1];
    }
    
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        preCalcula();

        while(in.ready()){
            String[] NM = in.readLine().trim().split(" ");
            int N = Integer.parseInt(NM[0]);
            int M = Integer.parseInt(NM[1]);

            System.out.println(digitosDiferentes(N, M));
        }
    }
}