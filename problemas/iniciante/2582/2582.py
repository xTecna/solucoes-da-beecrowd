musicas = ["PROXYCITY", "P.Y.N.G.", "DNSUEY!", "SERVERS", "HOST!",
           "CRIPTONIZE", "OFFLINE DAY", "SALT", "ANSWER!", "RAR?", "WIFI ANTENNAS"]

C = int(input())
for _ in range(C):
    X, Y = [int(x) for x in input().strip().split(' ')]
    print(musicas[X + Y])
