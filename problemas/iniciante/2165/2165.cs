using System;

class URI
{
    static void Main(string[] args)
    {
        string tweet = Console.ReadLine();
        Console.WriteLine(tweet.Length > 140 ? "MUTE" : "TWEET");
    }
}