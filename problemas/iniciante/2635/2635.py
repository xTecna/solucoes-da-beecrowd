class TrieNo:
    def __init__(self):
        self.qtd = 0
        self.maxPalavra = 0
        self.prox = {}


class Trie:
    def __init__(self):
        self.raiz = TrieNo()

    def adicionaPalavra(self, palavra):
        no = self.raiz
        n = len(palavra)
        for letra in palavra:
            if(not letra in no.prox):
                no.prox[letra] = TrieNo()
            no = no.prox[letra]
            no.qtd += 1
            no.maxPalavra = max(no.maxPalavra, n)

    def consultaPalavra(self, palavra):
        no = self.raiz
        for letra in palavra:
            if(not letra in no.prox):
                return (-1, -1)
            no = no.prox[letra]

        return (no.qtd, no.maxPalavra)


while True:
    try:
        trie = Trie()

        N = int(input())
        for _ in range(N):
            palavra = input()
            trie.adicionaPalavra(palavra)

        Q = int(input())
        for _ in range(N):
            palavra = input()
            qtd, maxPalavra = trie.consultaPalavra(palavra)

            if(qtd == -1 and maxPalavra == -1):
                print(-1)
            else:
                print(f'{qtd} {maxPalavra}')
    except EOFError:
        break
