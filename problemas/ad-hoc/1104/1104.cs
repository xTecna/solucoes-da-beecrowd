using System;
using System.Collections.Generic;

class URI {
    static void Main(string[] args) {
        string entrada;

        while((entrada = Console.ReadLine()) != null){
            List<int> AB = entrada.Trim().Split(' ').Select(x => int.Parse(x)).ToList();

            if(AB[0] == 0 && AB[1] == 0){
                break;
            }

            HashSet<int> alice = new HashSet<int>(Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)));
            HashSet<int> beatriz = new HashSet<int>(Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)));

            HashSet<int> uniao = alice.UnionWith(beatriz);
            Console.WriteLine(Math.Min(uniao.Count - alice.Count, uniao.Count - beatriz.Count));
        }
    }
}