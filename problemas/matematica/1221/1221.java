import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;

public class Main {
    public static void Crivo(ArrayList<Boolean>C, ArrayList<Integer> primos, int n){
        for(int i = 0; i < n; ++i){
            C.add(true);
        }
        
        C.set(1, false);
        primos.add(2);
        
        for(int i = 4; i < n; i += 2){
            C.set(i, false);
        }
        
        for(int i = 3; i < n; i += 2){
            if(C.get(i)){
                primos.add(i);
                
                for(int j = i * 3; j < n; j += 2 * i){
                    C.set(j, false);
                }
            }
        }
    }

    public static boolean ehPrimo(ArrayList<Integer> primos, int n){
        int p = primos.size();
        int limite = (int)Math.sqrt(n) + 1;
        
        for(int i = 0; i < p && primos.get(i) < limite; ++i){
            if(n % primos.get(i) == 0){
                return (n == primos.get(i));
            }
        }
        
        return true;
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int limite = 65536;
        ArrayList<Boolean> C = new ArrayList<Boolean>();
        ArrayList<Integer> primos = new ArrayList<Integer>();
        Crivo(C, primos, limite);

        int N = Integer.parseInt(in.readLine());
        for(int i = 0; i < N; ++i){
            int X = Integer.parseInt(in.readLine());

            if(ehPrimo(primos, X)){
                System.out.println("Prime");
            }else{
                System.out.println("Not Prime");
            }
        }
    }
}