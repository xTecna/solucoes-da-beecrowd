import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.Math;

public class Main {
    public static int N;
    public static int M;
    public static int[] mochila;
    public static int[] blocos;

    public static int calculaMochila() {
        mochila = new int[M + 1];
        for (int i = 1; i <= M; ++i) {
            mochila[i] = -1;
        }
        mochila[0] = 0;

        for (int i = 0; i < N; ++i) {
            int bloco = blocos[i];

            for (int j = bloco; j <= M; ++j) {
                if (mochila[j - bloco] != -1) {
                    if (mochila[j] == -1) {
                        mochila[j] = mochila[j - bloco] + 1;
                    } else {
                        mochila[j] = Math.min(mochila[j], mochila[j - bloco] + 1);
                    }
                }
            }
        }

        return mochila[M];
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int T = Integer.parseInt(in.readLine());
        for (int k = 0; k < T; ++k) {
            String[] numeros = in.readLine().trim().split(" ");
            N = Integer.parseInt(numeros[0]);
            M = Integer.parseInt(numeros[1]);

            blocos = new int[N];
            numeros = in.readLine().trim().split(" ");
            for (int i = 0; i < N; ++i) {
                blocos[i] = Integer.parseInt(numeros[i]);
            }

            System.out.println(calculaMochila());
        }
    }
}