import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int N = Integer.parseInt(in.readLine());
        for(int k = 0; k < N; ++k){
            String texto = in.readLine().trim().toLowerCase();

            HashMap<Character, Integer> frequencias = new HashMap<Character,Integer>();
            for(int i = 0; i < texto.length(); ++i){
                char letra = texto.charAt(i);
                if(Character.isAlphabetic(letra)){
                    if(!frequencias.containsKey(letra)){
                        frequencias.put(letra, 0);
                    }
                    frequencias.put(letra, frequencias.get(letra) + 1);
                }
            }

            int maior = 0;
            for (int valor : frequencias.values()){
                if(valor > maior){
                    maior = valor;
                }
            }

            String letras = "";
            for (char letra : frequencias.keySet()){
                if(frequencias.get(letra) == maior){
                    letras += letra;
                }
            }
            char[] resposta = letras.toCharArray();
            Arrays.sort(resposta);
            System.out.println(resposta);
        }
    }
}