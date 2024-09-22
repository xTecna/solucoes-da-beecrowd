using System;

class URI {
    static void Main(string[] args) {
        string C;
        int N, P, Q;

        N = int.Parse(Console.ReadLine());
        string[] entrada = Console.ReadLine().Split(' ');

        P = int.Parse(entrada[0]);
        C = entrada[1];
        Q = int.Parse(entrada[2]);

        if(C == "+"){
            if(P + Q <= N)
                Console.WriteLine("OK");
            else
                Console.WriteLine("OVERFLOW");
        }else{
            if(P * Q <= N)
                Console.WriteLine("OK");
            else
                Console.WriteLine("OVERFLOW");
        }
    }
}