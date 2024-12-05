using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        List<int> CN = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
        Console.WriteLine(CN[0] % CN[1]);
    }
}