import java.io.IOException;

public class Main {
    public static void imprimeLinhaHorizontal() {
        for (int i = 0; i < 39; ++i) {
            System.out.print("-");
        }
        System.out.println("");
    }

    public static void imprimeCabecalho() {
        imprimeLinhaHorizontal();
        System.out.println("|  decimal  |  octal  |  Hexadecimal  |");
        imprimeLinhaHorizontal();
    }

    public static void imprimeLinha(int numero) {
        System.out.printf("|%7d    |%5o    |%8X       |\n", numero, numero, numero);
    }

    public static void main(String[] args) throws IOException {
        imprimeCabecalho();
        for (int i = 0; i < 16; ++i) {
            imprimeLinha(i);
        }
        imprimeLinhaHorizontal();
    }
}