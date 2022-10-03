Ca, Ba, Pa = [int(x) for x in input().strip().split(' ')]
Cr, Br, Pr = [int(x) for x in input().strip().split(' ')]

resposta = 0
resposta += (Cr - Ca) if (Cr > Ca) else 0
resposta += (Br - Ba) if (Br > Ba) else 0
resposta += (Pr - Pa) if (Pr > Pa) else 0

print(resposta)