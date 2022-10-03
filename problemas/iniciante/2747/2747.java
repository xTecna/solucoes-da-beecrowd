import java.io.IOException;

public class Main {
    public static void imprimeLinha() {
        for (int i = 0; i < 39; ++i) {
            System.out.print("-");
        }
        System.out.println("");
    }

    public static void imprimeMeio() {
        System.out.print("|");
        for (int i = 0; i < 37; ++i) {
            System.out.print(" ");
        }
        System.out.println("|");
    }

    public static void main(String[] args) throws IOException {
        imprimeLinha();
        for (int i = 0; i < 5; ++i) {
            imprimeMeio();
        }
        imprimeLinha();
    }
}