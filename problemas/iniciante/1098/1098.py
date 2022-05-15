def formatNumber(x):
    if(x % 10 == 0):
        return f'{x//10}'
    else:
        return f'{x//10}.{x%10}'


for i in range(0, 21, 2):
    for j in range(10, 31, 10):
        print(f'I={formatNumber(i)} J={formatNumber(i + j)}')
