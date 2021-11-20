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

while(lines.length){
    let N = parseInt(lines.shift());

    if(!N)  break;

    let numeros = lines.shift().trim().split(' ').map((x) => parseInt(x));
    while(numeros.length > 1 || numeros[0] !== 0){
        let A = new Pilha();
        let estacao = new Pilha();
        let B = new Pilha();

        for(let i = 0; i < numeros.length; ++i){
            A.push(numeros[i]);
            B.push(i + 1);
        }

        while(!A.empty() || !estacao.empty() || !B.empty()){
            if(!A.empty() && !B.empty() && A.top() === B.top()){
                A.pop();
                B.pop();
            }else if(!estacao.empty() && !B.empty() && estacao.top() === B.top()){
                estacao.pop();
                B.pop();
            }else if(!A.empty()){
                estacao.push(A.top());
                A.pop();
            }else{
                break;
            }
        }

        if(A.empty() && estacao.empty() && B.empty()){
            console.log("Yes");
        }else{
            console.log("No");
        }

        numeros = lines.shift().trim().split(' ').map((x) => parseInt(x));
    }
    console.log("");
}
