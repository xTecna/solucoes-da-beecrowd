import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);
        
        String[] entrada = in.readLine().trim().split(" ");
        int A = Integer.parseInt(entrada[0]);
        int B = Integer.parseInt(entrada[1]);
        int C = Integer.parseInt(entrada[2]);
        int D = Integer.parseInt(entrada[3]);
        
        if((B > C) && (D > A) && (C + D > A + B) && (C > 0) && (D > 0) && (A % 2 == 0)){
            System.out.printf("Valores aceitos\n");
        }else{
            System.out.printf("Valores nao aceitos\n");
        }
    }
}