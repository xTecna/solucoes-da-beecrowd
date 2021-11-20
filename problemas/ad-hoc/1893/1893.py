[ontem, hoje] = [int(x) for x in input().strip().split(' ')]

if(hoje < 3):
    print("nova")
elif(hoje > 96):
    print("cheia")
elif(ontem > hoje):
    print("minguante")
else:
    print("crescente")
