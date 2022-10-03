import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.*;

public class Main {
    public static HashMap<String, Integer> dano;
    public static HashMap<String, ArrayList<Integer>> raio;

    public static void inicializa() {
        dano = new HashMap<String, Integer>();
        dano.put("fire", 200);
        dano.put("water", 300);
        dano.put("earth", 400);
        dano.put("air", 100);

        raio = new HashMap<String, ArrayList<Integer>>();
        raio.put("fire", new ArrayList<Integer>(Arrays.asList(0, 20, 30, 50)));
        raio.put("water", new ArrayList<Integer>(Arrays.asList(0, 10, 25, 40)));
        raio.put("earth", new ArrayList<Integer>(Arrays.asList(0, 25, 55, 70)));
        raio.put("air", new ArrayList<Integer>(Arrays.asList(0, 18, 38, 60)));
    }

    public static boolean dentro(int x1, int y1, int x2, int y2, int xc, int yc, int r) {
        int xm = Math.max(x1, Math.min(xc, x2));
        int ym = Math.max(y1, Math.min(yc, y2));

        return ((xm - xc) * (xm - xc) + (ym - yc) * (ym - yc)) <= r * r;
    }

    public static int resolve(String magia, int nivel, int x1, int y1, int x2, int y2, int xc, int yc) {
        if (dentro(x1, y1, x2, y2, xc, yc, raio.get(magia).get(nivel)))
            return dano.get(magia);
        return 0;
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        inicializa();

        int T = Integer.parseInt(in.readLine());
        for (int k = 0; k < T; ++k) {
            String[] entrada = in.readLine().trim().split(" ");
            int w = Integer.parseInt(entrada[0]);
            int h = Integer.parseInt(entrada[1]);
            int x0 = Integer.parseInt(entrada[2]);
            int y0 = Integer.parseInt(entrada[3]);

            entrada = in.readLine().trim().split(" ");
            String magia = entrada[0];
            int N = Integer.parseInt(entrada[1]);
            int cx = Integer.parseInt(entrada[2]);
            int cy = Integer.parseInt(entrada[3]);

            System.out.println(resolve(magia, N, x0, y0, x0 + w, y0 + h, cx, cy));
        }
    }
}