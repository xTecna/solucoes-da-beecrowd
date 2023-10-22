using System;
using System.Collections.Generic;
using System.Linq;

class URI {    
    static void Main(string[] args) {
        string entrada;
        
        while((entrada = Console.ReadLine()) != null){
            List<int> DVFVG = entrada.Trim().Split(' ').Select(x => int.Parse(x)).ToList();
            int D = DVFVG[0];
            int VF = DVFVG[1];
            int VG = DVFVG[2];

            if(12.0/VF >= Math.Sqrt(144 + (D * D))/VG){
                Console.WriteLine("S");
            }else{
                Console.WriteLine("N");
            }
        }
    }
}