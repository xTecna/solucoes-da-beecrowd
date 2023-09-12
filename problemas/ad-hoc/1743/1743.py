X = int(''.join(input().strip().split(' ')), 2)
Y = int(''.join(input().strip().split(' ')), 2)

print('Y' if (X ^ Y) == 31 else 'N')
