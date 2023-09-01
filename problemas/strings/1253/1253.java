import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int N = Integer.parseInt(in.readLine());
        for(int i = 0; i < N; ++i){
            char[] alfabeto = in.readLine().trim().toCharArray();
            int deslocamento = Integer.parseInt(in.readLine());

            for(int j = 0; j < alfabeto.length; ++j){
                alfabeto[j] = (char)((((int)alfabeto[j] - (int)'A' - deslocamento + 26) % 26) + (int)'A');
            }

            System.out.println(alfabeto);
        }
    }
}