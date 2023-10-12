import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.Math;

public class Main {
    public static int LCS(String A, String B) {
        int n = A.length(), m = B.length();
        int[][] T = new int[n + 1][m + 1];

        for(int i = 0; i <= n; ++i){
            for(int j = 0; j <= m; ++j){
                T[i][j] = 0;
            }
        }

        int resultado = 0;
        for(int i = 1; i <= n; ++i){
            for(int j = 1; j <= m; ++j){
                if(A.charAt(i - 1) == B.charAt(j - 1)){
                    T[i][j] = T[i - 1][j - 1] + 1;
                    resultado = Math.max(resultado, T[i][j]);
                }
            }
        }

        return resultado;
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while(in.ready()){
            String A = in.readLine();
            String B = in.readLine();

            System.out.println(LCS(A, B));
        }
    }
}