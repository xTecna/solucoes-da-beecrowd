using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static int r(int x, int y){
        return (3 * x) * (3 * x) + y * y;
    }

    static int b(int x, int y){
        return 2 * x * x + (5 * y) * (5 * y);
    }

    static int c(int x, int y){
        return -100 * x + y * y * y;
    }

    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());
        for(int i = 0; i < N; ++i){
            List<int> xy = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();

            int rafael = r(xy[0], xy[1]);
            int beto = b(xy[0], xy[1]);
            int carlos = c(xy[0], xy[1]);

            if(rafael > beto && rafael > carlos){
                Console.WriteLine("Rafael ganhou");
            }else if(beto > carlos){
                Console.WriteLine("Beto ganhou");
            }else{
                Console.WriteLine("Carlos ganhou");
            }
        }
    }
}