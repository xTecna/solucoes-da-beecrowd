using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        List<int> T = Console.ReadLine().Trim().Split(' ').Select((x) => int.Parse(x)).ToList();
        Console.WriteLine(T.Aggregate(0, (cur, acc) => acc + cur) - 3);
    }
}