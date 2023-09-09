import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while(in.ready()){
            String[] numeros = in.readLine().trim().split(" ");

            String D = numeros[0];
            String N = numeros[1];

            if(D.equals("0") && N.equals("0")){
                break;
            }

            N = N.replace(D, "");
            
            String resposta = "";
            for(int i = 0; i < N.length(); ++i){
                if(N.charAt(i) != '0'){
                    resposta = N.substring(i);
                    break;
                }
            }

            if(resposta.length() == 0){
                System.out.println("0");
            }else{
                System.out.println(resposta);
            }
        }
    }
}