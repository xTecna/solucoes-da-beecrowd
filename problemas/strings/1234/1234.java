import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while(in.ready()){
            char[] entrada = in.readLine().toCharArray();

            boolean maiuscula = true;
            for(int i = 0; i < entrada.length; ++i){
                if(!Character.isAlphabetic(entrada[i])){
                    System.out.print(entrada[i]);
                    continue;
                }

                if(maiuscula){
                    System.out.print(Character.toUpperCase(entrada[i]));
                }else{
                    System.out.print(Character.toLowerCase(entrada[i]));
                }
                maiuscula = !maiuscula;
            }
            System.out.println("");
        }
    }
}