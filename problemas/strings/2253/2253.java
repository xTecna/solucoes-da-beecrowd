import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while(in.ready()){
            String senha = in.readLine();

            if(senha.length() < 6 || senha.length() > 32){
                System.out.println("Senha invalida.");
                continue;
            }

            boolean maiuscula = false;
            boolean minuscula = false;
            boolean numero = false;
            boolean errado = false;
            for(int i = 0; i < senha.length(); ++i){
                if(Character.isAlphabetic(senha.charAt(i))){
                    if(Character.isUpperCase(senha.charAt(i)))  maiuscula = true;
                    else                                        minuscula = true;
                }else if(Character.isDigit(senha.charAt(i))){
                    numero = true;
                }else{
                    errado = true;
                    break;
                }
            }

            if(errado || !(maiuscula && minuscula && numero)){
                System.out.println("Senha invalida.");
            }else{
                System.out.println("Senha valida.");
            }
        }
    }
}