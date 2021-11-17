class Pilha {
    constructor() {
        this.pilha = [];
    }

    push(valor) {
        this.pilha.push(valor);
    }

    pop() {
        this.pilha.pop();
    }

    top() {
        return this.pilha[this.pilha.length - 1];
    }

    size() {
        return this.pilha.length;
    }

    empty() {
        return this.pilha.length === 0;
    }
}