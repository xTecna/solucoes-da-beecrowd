N = int(input())

for _ in range(N):
    alfabeto = input()
    deslocamento = int(input())

    resposta = ''.join([chr(((ord(letra) - 65 - deslocamento + 26) % 26) + 65) for letra in alfabeto])

    print(resposta)
