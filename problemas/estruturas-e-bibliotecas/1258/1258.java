import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Arrays;

public class Main {
    public static class Camisa implements Comparable<Camisa> {
        public Camisa(String nome, String cor, char tamanho){
            this.nome = nome;
            this.cor = cor;
            this.tamanho = tamanho;
        }

        public String nome;
        public String cor;
        public char tamanho;

        @Override
        public int compareTo(Camisa outra) {
            if(this.cor.equals(outra.cor)){
                if(this.tamanho == outra.tamanho){
                    return this.nome.compareTo(outra.nome);
                }else{
                    return outra.tamanho - this.tamanho;
                }
            }else{
                return this.cor.compareTo(outra.cor);
            }
        }
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        boolean first = true;
        while(in.ready()){
            int N = Integer.parseInt(in.readLine());

            if(N == 0){
                break;
            }

            if(first){
                first = false;
            }else{
                System.out.println("");
            }

            Camisa[] camisas = new Camisa[N];
            for(int i = 0; i < N; ++i){
                String nome = in.readLine();
                
                String[] corTamanho = in.readLine().trim().split(" ");
                String cor = corTamanho[0];
                char tamanho = corTamanho[1].charAt(0);

                camisas[i] = new Camisa(nome, cor, tamanho);
            }

            Arrays.sort(camisas);
            for(int i = 0; i < N; ++i){
                System.out.printf("%s %c %s\n", camisas[i].cor, camisas[i].tamanho, camisas[i].nome);
            }
        }
    }
}