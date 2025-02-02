import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.HashSet;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int N = Integer.parseInt(in.readLine());
        HashSet<Integer> figurinhas = new HashSet<Integer>();

        int M = Integer.parseInt(in.readLine());
        for (int i = 0; i < M; ++i) {
            int X = Integer.parseInt(in.readLine());
            figurinhas.add(X);
        }

        System.out.println(N - figurinhas.size());
    }
}