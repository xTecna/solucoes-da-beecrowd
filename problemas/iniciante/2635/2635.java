import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.Map;
import java.lang.Math;

public class Main {
    public static class TrieNo {
        public int qtd;
        public int maxPalavra;

        public Map<Character, TrieNo> prox;

        public TrieNo() {
            qtd = 0;
            maxPalavra = 0;
            prox = new HashMap<Character, TrieNo>();
        }
    }

    public static class Trie {
        public TrieNo raiz;

        public Trie() {
            raiz = new TrieNo();
        }

        public void adicionaPalavra(String palavra) {
            TrieNo no = raiz;
            int n = palavra.length();
            for (int i = 0; i < n; ++i) {
                char indice = palavra.charAt(i);
                if (!(no.prox.containsKey(indice))) {
                    no.prox.put(indice, new TrieNo());
                }
                no = no.prox.get(indice);
                no.qtd += 1;
                no.maxPalavra = Math.max(no.maxPalavra, n);
            }
        }

        public TrieNo consultaPalavra(String palavra) {
            TrieNo no = raiz;
            for (int i = 0; i < palavra.length(); ++i) {
                char indice = palavra.charAt(i);
                if (!(no.prox.containsKey(indice))) {
                    return null;
                }
                no = no.prox.get(indice);
            }

            return no;
        }
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while (in.ready()) {
            Trie trie = new Trie();

            int N = Integer.parseInt(in.readLine());
            for (int i = 0; i < N; ++i) {
                String palavra = in.readLine();
                trie.adicionaPalavra(palavra);
            }

            int Q = Integer.parseInt(in.readLine());
            for (int i = 0; i < Q; ++i) {
                String palavra = in.readLine();
                TrieNo no = trie.consultaPalavra(palavra);

                if (no == null) {
                    System.out.println(-1);
                } else {
                    System.out.printf("%d %d\n", no.qtd, no.maxPalavra);
                }
            }
        }
    }
}