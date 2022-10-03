using System;
using System.Collections.Generic;

class URI {
    static void Main(string[] args) {
        string joia;

        HashSet<string> joias = new HashSet<string>();
        while((joia = Console.ReadLine()) != null){
            joias.Add(joia);
        }

        Console.WriteLine(joias.Count);
    }
}