import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static int NMAX = 10001;
    public static int[] primos;
    public static boolean[] C;
    public static int n_primos;

    public static void Crivo(){
        C = new boolean[NMAX];
        primos = new int[NMAX];
        n_primos = 0;

        C[0] = false;
        C[1] = false;
        C[2] = true;
        primos[n_primos++] = 2;
        for(int i = 4; i < NMAX; i += 2){
            C[i] = false;
        }
        for(int i = 3; i < NMAX; i += 2){
            C[i] = true;
        }

        for(int i = 3; i < NMAX; i += 2){
            if(C[i]){
                primos[n_primos++] = i;
                for(int j = 3 * i; j < NMAX; j += 2 * i){
                    C[j] = false;
                }
            }
        }
    }

    public static long potencia(int base, int expoente){
        if(expoente == 0){
            return 1;
        }else if(expoente % 2 == 1){
            return base * potencia(base, expoente - 1);
        }else{
            long pot = potencia(base, expoente / 2);
            return pot * pot;
        }
    }

    public static long sumDiv(int N){
        int i_primos = 0;
        int primo = primos[i_primos];
        long resposta = 1;

        while(primo * primo <= N){
            int pot = 0;

            while(N % primo == 0){
                N /= primo;
                ++pot;
            }

            resposta *= (potencia(primo, pot + 1) - 1)/(primo - 1);
            primo = primos[++i_primos];
        }

        if(N != 1){
            resposta *= (potencia(N, 2) - 1)/(N - 1);
        }

        return resposta;
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        Crivo();

        int N = Integer.parseInt(in.readLine());
        for(int i = 0; i < N; ++i){
            int X = Integer.parseInt(in.readLine());

            if(X == sumDiv(X) - X){
                System.out.printf("%d eh perfeito\n", X);
            }else{
                System.out.printf("%d nao eh perfeito\n", X);
            }
        }
    }
}