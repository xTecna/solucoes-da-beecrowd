import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int N = Integer.parseInt(in.readLine());
        int[] frequencias = new int[2001];
        for(int i = 0; i < N; ++i){
            int X = Integer.parseInt(in.readLine());
            frequencias[X] += 1;
        }

        for(int i = 1; i < 2001; ++i){
            if(frequencias[i] > 0){
                System.out.printf("%d aparece %d vez(es)\n", i, frequencias[i]);
            }
        }
    }
}