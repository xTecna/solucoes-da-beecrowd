class Pilha:
    def __init__(self):
        self.pilha = []

    def push(self, valor):
        self.pilha.append(valor)

    def pop(self):
        self.pilha.pop()

    def top(self):
        return self.pilha[-1]

    def size(self):
        return len(self.pilha)

    def empty(self):
        return len(self.pilha) == 0
