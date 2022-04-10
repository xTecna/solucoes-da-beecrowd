using System;

class URI {
    static void Main(string[] args) {
        string[] meses = new string[12] {
            "January", "February", "March", "April", "May", "June",
            "July", "August", "September", "October", "November", "December"
        };
        
        int mes = int.Parse(Console.ReadLine());
        
        Console.WriteLine(meses[mes - 1]);
    }
}