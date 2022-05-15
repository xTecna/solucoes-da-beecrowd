import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.Math;

public class Main {
    public static void imprime(String nome, int[] vetor, int n){
        for(int i = 0; i < n; ++i){
            System.out.printf("%s[%d] = %d\n", nome, i, vetor[i]);
        }
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);
    
        int n_impar, n_par;
        int[] impar, par;

        n_impar = 0;
        n_par = 0;
        impar = new int[5];
        par = new int[5];
        for(int i = 0; i < 15; ++i){
            int valor = Integer.parseInt(in.readLine());

            if(Math.abs(valor) % 2 == 1){
                impar[n_impar++] = valor;

                if(n_impar == 5){
                    imprime("impar", impar, n_impar);
                    n_impar = 0;
                }
            }else{
                par[n_par++] = valor;

                if(n_par == 5){
                    imprime("par", par, n_par);
                    n_par = 0;
                }
            }
        }

        imprime("impar", impar, n_impar);
        imprime("par", par, n_par);
    }
}