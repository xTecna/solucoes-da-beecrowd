var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

class DequeNo {
    constructor(valor) {
        this.valor = valor;
        this.anterior = null;
        this.proximo = null;
    }
}

class Deque {
    constructor() {
        this.tamanho = 0;
        this.frente = null;
        this.tras = null;
    }

    push_front(valor) {
        this.tamanho += 1;

        let novaFrente = new DequeNo(valor);
        novaFrente.proximo = this.frente;
        if (this.frente)    this.frente.anterior = novaFrente;
        this.frente = novaFrente;
        this.tras = this.tras || novaFrente;
    }

    push_back(valor) {
        this.tamanho += 1;

        let novoTras = new DequeNo(valor);
        novoTras.anterior = this.tras;
        if (this.tras)  this.tras.proximo = novoTras;
        this.tras = novoTras;
        this.frente = this.frente || novoTras;
    }

    pop_front() {
        if(this.frente){
            this.tamanho -= 1;
            this.frente = this.frente.proximo;
        }
    }

    pop_back() {
        if(this.tras){
            this.tras -= 1;
            this.tras = this.tras.anterior;
        }
    }

    front() {
        return this.frente.valor;
    }

    back() {
        return this.tras.valor;
    }

    size() {
        return this.tamanho;
    }

    empty() {
        return this.tamanho === 0;
    }
}

lines.pop();

while(lines.length){
    let n = parseInt(lines.shift());

    let deque = new Deque();
    for(let i = 1; i <= n; ++i){
        deque.push_back(i);
    }

    let discarded = [];
    while(deque.size() > 1){
        discarded.push(deque.front());

        deque.pop_front();
        deque.push_back(deque.front());
        deque.pop_front();
    }

    console.log(`Discarded cards: ${discarded.join(', ')}`);
    console.log(`Remaining card: ${deque.front()}`);
}
