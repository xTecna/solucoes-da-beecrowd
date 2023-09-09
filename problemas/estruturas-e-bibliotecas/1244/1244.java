import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public class Main {
    public static int comp(String a, String b){
        return b.length() - a.length();
    }

    public static void insertionSort(List<String> V){
        for(int i = 1; i < V.size(); ++i){
            int j = i, k = j - 1;
            while(k > -1 && comp(V.get(j), V.get(k)) < 0){
                Collections.swap(V, j, k);
                --j;
                --k;
            }
        }
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int N = Integer.parseInt(in.readLine());
        for(int i = 0; i < N; ++i){
            List<String> palavras = Arrays.asList(in.readLine().trim().split(" "));

            insertionSort(palavras);

            System.out.println(String.join(" ", palavras));
        }
    }
}