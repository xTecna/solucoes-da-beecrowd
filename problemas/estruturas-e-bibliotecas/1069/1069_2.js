var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

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

let N = parseInt(lines.shift());

for (let k = 0; k < N; ++k) {
    let expressao = lines.shift();

    let resposta = 0;
    const pilha = new Pilha();
    for (let i = 0; i < expressao.length; ++i) {
        if (expressao[i] === '<') {
            pilha.push('<');
        } else if (expressao[i] === '>' && !pilha.empty()) {
            resposta += 1;
            pilha.pop();
        }
    }

    console.log(resposta);
}
