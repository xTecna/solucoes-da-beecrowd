using System;
using System.Linq;
using System.Collections.Generic;

class URI {
  static Dictionary<string, int> dano { get; set; }
    static Dictionary<string, int[]> raio { get; set; }

    static void inicializa(){
        dano = new Dictionary<string, int>();
        dano.Add("fire", 200);
        dano.Add("water", 300);
        dano.Add("earth", 400);
        dano.Add("air", 100);

        raio = new Dictionary<string, int[]>();
        raio.Add("fire", new int[] {0, 20, 30, 50});
        raio.Add("water", new int[] {0, 10, 25, 40});
        raio.Add("earth", new int[] {0, 25, 55, 70});
        raio.Add("air", new int[] {0, 18, 38, 60});
    }

    static bool dentro(int x1, int y1, int x2, int y2, int xc, int yc, int r){
        int xm = Math.Max(x1, Math.Min(xc, x2));
        int ym = Math.Max(y1, Math.Min(yc, y2));

        return ((xm - xc) * (xm - xc) + (ym - yc) * (ym - yc)) <= r * r;
    }

    static int resolve(string magia, int nivel, int x1, int y1, int x2, int y2, int xc, int yc){
        if(dentro(x1, y1, x2, y2, xc, yc, raio[magia][nivel]))
            return dano[magia];
        return 0;
    }

    static void Main(string[] args) {
        inicializa();
        
        int T = int.Parse(Console.ReadLine());
        for(int k = 0; k < T; ++k){
            List<int> dimensoes = Console.ReadLine().Trim().Split(' ').Select((x) => int.Parse(x)).ToList();
            int w = dimensoes[0];
            int h = dimensoes[1];
            int x0 = dimensoes[2];
            int y0 = dimensoes[3];

            string[] dim_magia = Console.ReadLine().Trim().Split(' ');
            string magia = dim_magia[0];
            int N = int.Parse(dim_magia[1]);
            int cx = int.Parse(dim_magia[2]);
            int cy = int.Parse(dim_magia[3]);

            Console.WriteLine(resolve(magia, N, x0, y0, x0 + w, y0 + h, cx, cy));
        }
    }
}