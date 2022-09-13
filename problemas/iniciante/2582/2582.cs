using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        string[] musicas = new string[] {"PROXYCITY", "P.Y.N.G.", "DNSUEY!", "SERVERS", "HOST!", "CRIPTONIZE", "OFFLINE DAY", "SALT", "ANSWER!", "RAR?", "WIFI ANTENNAS"};
        int C = int.Parse(Console.ReadLine());

        for(int i = 0; i < C; ++i){
            List<int> XY = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
            Console.WriteLine(musicas[XY[0] + XY[1]]);
        }
    }
}