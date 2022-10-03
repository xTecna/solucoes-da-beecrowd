import java.io.IOException;

public class Main {
    public static void imprimeLinha() {
        for (int i = 0; i < 39; ++i) {
            System.out.print("-");
        }
        System.out.println("");
    }

    public static void imprimeMeio(String texto, int indice) {
        System.out.print("|");
        for (int i = 0; i < indice - 2; ++i) {
            System.out.print(" ");
        }
        System.out.print(texto);

        int resto = 37 - Math.max(0, indice - 2) - texto.length();
        for (int i = 0; i < resto; ++i) {
            System.out.print(" ");
        }
        System.out.println("|");
    }

    public static void main(String[] args) throws IOException {
        imprimeLinha();
        imprimeMeio("Roberto", 10);
        imprimeMeio("", 1);
        imprimeMeio("5786", 10);
        imprimeMeio("", 1);
        imprimeMeio("UNIFEI", 10);
        imprimeLinha();
    }
}