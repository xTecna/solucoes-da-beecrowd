using System;

class URI {
    static void Main(string[] args) {
        string[] data = Console.ReadLine().Trim().Split('/');

        Console.WriteLine($"{data[1]}/{data[0]}/{data[2]}");
        Console.WriteLine($"{data[2]}/{data[1]}/{data[0]}");
        Console.WriteLine($"{data[0]}-{data[1]}-{data[2]}");
    }
}