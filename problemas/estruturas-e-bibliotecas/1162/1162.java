import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Collections;

public class Main {
    public static int comp(int a, int b){
        return a - b;
    }

    public static int insertionSort(ArrayList<Integer> V){
        int trocas = 0;

        for(int i = 1; i < V.size(); ++i){
            int j = i, k = j - 1;
            while(k > -1 && comp(V.get(j), V.get(k)) < 0){
                Collections.swap(V, j, k);
                ++trocas;
                --j;
                --k;
            }
        }

        return trocas;
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int N = Integer.parseInt(in.readLine());

        for(int k = 0; k < N; ++k){
            int L = Integer.parseInt(in.readLine());
            String[] V = in.readLine().trim().split(" ");
            ArrayList<Integer> vagoes = new ArrayList<Integer>();
            for(int i = 0; i < L; ++i){
                vagoes.add(Integer.parseInt(V[i]));
            }

            System.out.printf("Optimal train swapping takes %d swaps.\n", insertionSort(vagoes));
        }
    }
}