import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.Math;

public class Main {
    public static int MDC(int a, int b) {
        return (b == 0) ? a : MDC(b, a % b);
    }

    public static class Fracao {
        public int num;
        public int den;

        public Fracao() {
            this.num = 0;
            this.den = 0;
        }

        public Fracao(int num, int den) {
            this.num = num;
            this.den = den;
        }

        public Fracao irredutivel() {
            int mdc = MDC(Math.abs(this.num), this.den);

            return new Fracao(this.num / mdc, this.den / mdc);
        }
    }

    public static Fracao soma(Fracao a, Fracao b) {
        return new Fracao(a.num * b.den + a.den * b.num, a.den * b.den);
    }

    public static Fracao subtracao(Fracao a, Fracao b) {
        return new Fracao(a.num * b.den - a.den * b.num, a.den * b.den);
    }

    public static Fracao multiplicacao(Fracao a, Fracao b) {
        return new Fracao(a.num * b.num, a.den * b.den);
    }

    public static Fracao divisao(Fracao a, Fracao b) {
        return new Fracao(a.num * b.den, a.den * b.num);
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int N = Integer.parseInt(in.readLine());

        for (int i = 0; i < N; ++i) {
            String[] entrada = in.readLine().trim().split(" ");

            Fracao f1 = new Fracao(Integer.parseInt(entrada[0]), Integer.parseInt(entrada[2]));
            Fracao f2 = new Fracao(Integer.parseInt(entrada[4]), Integer.parseInt(entrada[6]));

            Fracao resultado = new Fracao();

            switch (entrada[3]) {
                case "+":
                    resultado = soma(f1, f2);
                    break;
                case "-":
                    resultado = subtracao(f1, f2);
                    break;
                case "*":
                    resultado = multiplicacao(f1, f2);
                    break;
                case "/":
                    resultado = divisao(f1, f2);
                    break;
            }

            Fracao irredutivel = resultado.irredutivel();

            System.out.printf("%d/%d = %d/%d\n", resultado.num, resultado.den, irredutivel.num, irredutivel.den);
        }
    }
}