var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

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

while (lines.length) {
    let expressao = lines.shift().trim();

    let i = 0;
    const pilha = new Pilha();

    for (i = 0; i < expressao.length; ++i) {
        if (expressao[i] === '(') {
            pilha.push('(');
        } else if (expressao[i] === ')') {
            if (pilha.empty()) break;
            else pilha.pop();
        }
    }

    if (i === expressao.length && pilha.empty()) {
        console.log("correct");
    } else {
        console.log("incorrect");
    }
}
