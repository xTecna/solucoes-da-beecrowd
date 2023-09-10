using System;

class URI {
    static ulong potencia(ulong a, int ex){
        if(ex == 1)     return a;
        if(ex % 2 == 1) return a * potencia(a, ex - 1);
        
        ulong p = potencia(a, ex / 2);
        return p * p;
    }

    static ulong somaPG(uint a1, uint q, int n){
        return (a1 * (potencia(q, n) - 1)) / (q - 1);
    }

    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());
        for(int i = 0; i < N; ++i){
            int X = int.Parse(Console.ReadLine());

            Console.WriteLine($"{somaPG(1, 2, X)/12000} kg");
        }
    }
}