using System;

class URI {
    
  static void Main() {
    string[] alunos;
    int N, K;
    
    string[] input = System.Console.ReadLine().Trim().Split(' ');
    
    N = Int32.Parse(input[0]);
    K = Int32.Parse(input[1]);
    alunos = new string[N];
    
    for(var i = 0; i < N; ++i){
        alunos[i] = System.Console.ReadLine().Trim();
    }
    
    Array.Sort(alunos);
    
    System.Console.WriteLine(alunos[K - 1]);
  }
  
}