import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while (in.ready()) {
            int N = Integer.parseInt(in.readLine());

            for (int i = 0; i < N; ++i) {
                for (int j = 0; j < N; ++j) {
                    if (i == N / 2 && j == N / 2) {
                        System.out.print(4);
                    } else if (N / 3 <= i && i < N - N / 3 && N / 3 <= j && j < N - N / 3) {
                        System.out.print(1);
                    } else if (i == j) {
                        System.out.print(2);
                    } else if (i == N - 1 - j) {
                        System.out.print(3);
                    } else {
                        System.out.print(0);
                    }
                }
                System.out.println("");
            }
            System.out.println("");
        }
    }
}