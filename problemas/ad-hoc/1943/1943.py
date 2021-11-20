K = int(input())

if(K == 1):
    print("Top 1")
elif(K <= 3):
    print("Top 3")
elif(K <= 5):
    print("Top 5")
elif(K <= 10):
    print("Top 10")
elif(K <= 25):
    print("Top 25")
elif(K <= 50):
    print("Top 50")
else:
    print("Top 100")
