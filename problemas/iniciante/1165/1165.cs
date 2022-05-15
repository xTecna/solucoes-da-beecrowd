using System;

class URI {
    static int NMAX = 10000001;
    static bool[] C;

    static void Crivo(){
        C = new bool[NMAX];

        C[0] = false;
        C[1] = false;
        C[2] = true;
        for(int i = 4; i < NMAX; i += 2){
            C[i] = false;
        }
        for(int i = 3; i < NMAX; i += 2){
            C[i] = true;
        }

        for(int i = 3; i < NMAX; i += 2){
            if(C[i]){
                for(int j = 3 * i; j < NMAX; j += 2 * i){
                    C[j] = false;
                }
            }
        }
    }

    static void Main(string[] args) {
        Crivo();

        int N = int.Parse(Console.ReadLine());
        for(int i = 0; i < N; ++i){
            int X = int.Parse(Console.ReadLine());

            if(C[X]){
                Console.WriteLine($"{X} eh primo");
            }else{
                Console.WriteLine($"{X} nao eh primo");
            }
        }
    }
}