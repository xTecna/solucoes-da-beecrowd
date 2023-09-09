using System;

class URI {
    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());
        for(int i = 0; i < N; ++i){
            string sequencia = Console.ReadLine();
            
            int a = int.Parse(sequencia[0].ToString());
            int b = int.Parse(sequencia[2].ToString());
            
            if(a == b){
                Console.WriteLine(a * b);
            }else if(Char.IsUpper(sequencia[1])){
                Console.WriteLine(b - a);
            }else{
                Console.WriteLine(a + b);
            }
        }
    }
}