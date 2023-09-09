using System;
using System.Collections.Generic;

class URI {
    static void Crivo(ref List<bool> C, ref List<int> primos, int n){
        for(int i = 0; i < n; ++i){
            C.Add(true);
        }
        
        C[1] = false;
        primos.Add(2);
        
        for(int i = 4; i < n; i += 2){
            C[i] = false;
        }
        
        for(int i = 3; i < n; i += 2){
            if(C[i]){
                primos.Add(i);
                
                for(int j = i * 3; j < n; j += 2 * i){
                    C[j] = false;
                }
            }
        }
    }

    static bool ehPrimo(ref List<int> primos, int n){
        int p = primos.Count;
        int limite = (int)Math.Sqrt(n) + 1;
        
        for(int i = 0; i < p && primos[i] < limite; ++i){
            if(n % primos[i] == 0){
                return (n == primos[i]);
            }
        }
        
        return true;
    }

    static void Main(string[] args) {
        int limite = 65536;
        List<bool> C = new List<bool>(limite);
        List<int> primos = new List<int>();

        Crivo(ref C, ref primos, limite);

        int N = int.Parse(Console.ReadLine());
        for(int i = 0; i < N; ++i){
            int X = int.Parse(Console.ReadLine());
            
            if(ehPrimo(ref primos, X)){
                Console.WriteLine("Prime");
            }else{
                Console.WriteLine("Not Prime");
            }
        }
    }
}