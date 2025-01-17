N = int(input())
divisoes = [int(x) for x in input().strip().split(' ')]

print(sum(divisoes) - N)