using System;
using System.Linq;
using System.Collections.Generic;

class URI {
    static int mdc(int a, int b){
        return (b == 0) ? a : mdc(b, a % b);
    }

    static void Main(string[] args) {
        int X, Y;

        while(true){
            try{
                List<int> entrada = Console.ReadLine().Trim().Split(' ').Select((x) => int.Parse(x)).ToList();

                X = entrada[0];
                Y = entrada[1];

                Console.WriteLine(2 * (X/mdc(X, Y) + Y/mdc(X, Y)));
            }catch (Exception ex){
                break;
            }
        }
    }
}