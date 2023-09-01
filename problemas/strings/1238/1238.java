import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.Math;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int N = Integer.parseInt(in.readLine());
        for(int i = 0; i < N; ++i){
            String[] palavras = in.readLine().trim().split(" ");

            char[] A = palavras[0].toCharArray();
            char[] B = palavras[1].toCharArray();
            String resposta = "";

            int tam = Math.min(A.length, B.length);
            for(int j = 0; j < tam; ++j){
                resposta += A[j];
                resposta += B[j];
            }

            if(tam < A.length){
                for(int j = tam; j < A.length; ++j){
                    resposta += A[j];
                }
            }

            if(tam < B.length){
                for(int j = tam; j < B.length; ++j){
                    resposta += B[j];
                }
            }

            System.out.println(resposta);
        }
    }
}