using System;
using System.Collections.Generic;
using System.Linq;

class HelloWorld {
  static void Main() {
      string entrada;
      while((entrada = Console.ReadLine()) != null)
      {
          List<int> numeros = entrada.Trim().Split(' ').Select(x => int.Parse(x)).ToList();
          int A = numeros[0];
          int B = numeros[1];
          
          if(A == 0 && B == 0){
              break;
          }
          
          int C = 2 * A - B;
          Console.WriteLine(C);
      }
  }
}