N = int(input().strip())
LA, LB = [int(x) for x in input().strip().split(' ')]
SA, SB = [int(x) for x in input().strip().split(' ')]

if(LA <= N <= LB and SA <= N <= SB):
    print("possivel")
else:
    print("impossivel")
