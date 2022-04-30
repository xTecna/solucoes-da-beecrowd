import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while(in.ready()){
            int senha = Integer.parseInt(in.readLine());

            if(senha == 2002){
                System.out.println("Acesso Permitido");
                break;
            }

            System.out.println("Senha Invalida");
        }
    }
}