n = int(input())
antes = input()
depois = input()

n %= 2
if(n == 0):
    print('Deletion succeeded' if(antes == depois) else 'Deletion failed')
else:
    succeeded = True
    for i in range(len(antes)):
        if(antes[i] == depois[i]):
            succeeded = False
            break
    print('Deletion succeeded' if(succeeded) else 'Deletion failed')

