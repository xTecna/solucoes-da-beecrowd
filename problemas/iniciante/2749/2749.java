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
        imprimeMeio("x = 35", 1);
        imprimeMeio("", 1);
        imprimeMeio("x = 35", 17);
        imprimeMeio("", 1);
        imprimeMeio("x = 35", 33);
        imprimeLinha();
    }
}