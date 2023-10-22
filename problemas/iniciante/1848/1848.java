import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static int valor(char simbolo) {
        switch(simbolo){
            case '-':   return 0;
            case '*':   return 1;
        }
        return 0;
    }

    public static int converte(String numero) {
        int potencia = 1, resposta = 0;
        
        for(int i = numero.length() - 1; i > -1; --i){
            resposta += valor(numero.charAt(i)) * potencia;
            potencia *= 2;
        }
        
        return resposta;
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int soma = 0;

        while (in.ready()) {
            String linha = in.readLine();

            if (linha.equals("caw caw")) {
                System.out.println(soma);
                soma = 0;
            } else {
                soma += converte(linha);
            }
        }
    }
}