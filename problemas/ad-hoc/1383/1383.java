import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.HashSet;

public class Main {
    public static int[][] sudoku = new int[9][9];

    public static boolean verificaLinha(int i){
        HashSet<Integer> numeros = new HashSet<Integer>();
        for(int j = 0; j < 9; ++j){
            numeros.add(sudoku[i][j]);
        }
        return numeros.size() == 9;
    }

    public static boolean verificaColuna(int j){
        HashSet<Integer> numeros = new HashSet<Integer>();
        for(int i = 0; i < 9; ++i){
            numeros.add(sudoku[i][j]);
        }
        return numeros.size() == 9;
    }

    public static boolean verificaQuadrado(int x){
        HashSet<Integer> numeros = new HashSet<Integer>();
        int linha = 3 * (x / 3);
        int coluna = 3 * (x % 3);
        for(int i = 0; i < 3; ++i){
            for(int j = 0; j < 3; ++j){
                numeros.add(sudoku[linha + i][coluna + j]);
            }
        }
        return numeros.size() == 9;
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int n = Integer.parseInt(in.readLine());
        for(int k = 1; k <= n; ++k){
            for(int i = 0; i < 9; ++i){
                String[] entrada = in.readLine().trim().split(" ");
                for(int j = 0; j < 9; ++j){
                    sudoku[i][j] = Integer.parseInt(entrada[j]);
                }
            }

            boolean resposta = true;
            for(int i = 0; i < 9; ++i){
                if(!verificaLinha(i) || !verificaColuna(i) || !verificaQuadrado(i)){
                    resposta = false;
                    break;
                }
            }

            System.out.printf("Instancia %d\n", k);
            if(resposta){
                System.out.println("SIM");
            }else{
                System.out.println("NAO");
            }
            System.out.println("");
        }
    }
}