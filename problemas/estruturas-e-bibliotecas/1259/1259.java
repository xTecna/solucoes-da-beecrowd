import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.List;
import java.util.ArrayList;
import java.util.Collections;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int N = Integer.parseInt(in.readLine());
        ArrayList<Integer> pares = new ArrayList<Integer>();
        ArrayList<Integer> impares = new ArrayList<Integer>();
        for(int i = 0; i < N; ++i){
            int x = Integer.parseInt(in.readLine());

            if(x % 2 == 0){
                pares.add(x);
            }else{
                impares.add(x);
            }
        }

        Collections.sort(pares);
        Collections.sort(impares, Collections.reverseOrder());

        for(int i = 0; i < pares.size(); ++i){
            System.out.println(pares.get(i));
        }
        for(int i = 0; i < impares.size(); ++i){
            System.out.println(impares.get(i));
        }
    }
}