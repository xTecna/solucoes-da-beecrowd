using System;
using System.Linq;
using System.Runtime;

class HelloWorld {
  static void Main() {
    int n = int.Parse(Console.ReadLine().Trim());
    
    string resposta = new string(
        Console.ReadLine().Trim().Split(' ')
        .Select(x => (char)Convert.ToInt32(x, 16)).ToArray());
    Console.WriteLine(resposta);
  }
}