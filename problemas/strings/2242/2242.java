import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static boolean vogal(char x){
        switch(x){
            case 'a':
            case 'e':
            case 'i':
            case 'o':
            case 'u':   return true;
            default:    return false;
        }
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        String risada = in.readLine().trim();
        String vogais = "";
        for(int i = 0; i < risada.length(); ++i){
            if(vogal(risada.charAt(i))){
                vogais += risada.charAt(i);
            }
        }

        String inversao = "";
        for(int i = vogais.length() - 1; i > -1; --i){
            inversao += vogais.charAt(i);
        }

        if(vogais.equals(inversao)){
            System.out.println('S');
        }else{
            System.out.println('N');
        }
    }
}