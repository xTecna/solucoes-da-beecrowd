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

class FilaNo {
    constructor(valor) {
        this.valor = valor;
        this.proximo = null;
    }
}

class Fila {
    constructor() {
        this.tamanho = 0;
        this.frente = null;
        this.tras = null;
    }

    push(valor) {
        this.tamanho += 1;
        let novoNo = new FilaNo(valor);
        if(this.frente === null){
            this.frente = novoNo;
        }else{
            this.tras.proximo = novoNo;
        }
        this.tras = novoNo;
    }

    pop() {
        this.tamanho -= 1;
        this.frente = this.frente.proximo;
    }

    front() {
        return this.frente.valor;
    }

    size() {
        return this.tamanho;
    }

    empty() {
        return this.tamanho === 0;
    }
}

class FilaDePrioridade {
    constructor() {
        this.arvore = [[0, 0]];
    }

    pai(i) {
        return Math.floor(i/2);
    }

    filhoEsquerdo(i){
        return 2*i;
    }

    filhoDireito(i){
        return 2*i + 1;
    }

    comp(a, b){
        return a[1] - b[1];
    }

    corrigeSubindo(indice){
        if(indice === 1){
            return;
        }

        let acima = this.pai(indice);
        if(this.comp(this.arvore[acima], this.arvore[indice]) < 0){
            let temp = this.arvore[acima];
            this.arvore[acima] = this.arvore[indice];
            this.arvore[indice] = temp;
            this.corrigeSubindo(acima);
        }
    }

    push(valor){
        this.arvore.push(valor);
        this.corrigeSubindo(this.arvore.length - 1);
    }

    corrigeDescendo(indice){
        let abaixo = this.filhoEsquerdo(indice);
        if(abaixo >= this.arvore.length){
            return;
        }
        if(this.comp(this.arvore[indice], this.arvore[abaixo]) < 0){
            let temp = this.arvore[abaixo];
            this.arvore[abaixo] = this.arvore[indice];
            this.arvore[indice] = temp;
            this.corrigeDescendo(abaixo);
        }

        abaixo = this.filhoDireito(indice);
        if(abaixo >= this.arvore.length){
            return;
        }
        if(this.comp(this.arvore[indice], this.arvore[abaixo]) < 0){
            let temp = this.arvore[abaixo];
            this.arvore[abaixo] = this.arvore[indice];
            this.arvore[indice] = temp;
            this.corrigeDescendo(abaixo);
        }
    }

    pop(){
        if(this.arvore.length <= 1){
            return;
        }

        let temp = this.arvore[1];
        this.arvore[1] = this.arvore[this.arvore.length - 1];
        this.arvore[this.arvore.length - 1] = temp;
        this.arvore.pop();
        this.corrigeDescendo(1);
    }

    top(){
        return this.arvore[1];
    }

    empty(){
        return this.arvore.length === 1;
    }
}

while(lines.length){
    let n = parseInt(lines.shift().trim());

    let pilha = new Pilha();
    let fila = new Fila();
    let filaDePrioridade = new FilaDePrioridade();
    let [p, f, fp] = [true, true, true];
    for(let i = 0; i < n; ++i){
        let [opcao, elemento] = lines.shift().trim().split(' ').map(x => parseInt(x));

        if(opcao === 1){
            if(p){
                pilha.push(elemento);
            }
            if(f){
                fila.push(elemento);
            }
            if(fp){
                filaDePrioridade.push([elemento, elemento]);
            }
        }else{
            if(p){
                if(pilha.empty() || pilha.top() !== elemento){
                    p = false;
                }else{
                    pilha.pop();
                }
            }
            if(f){
                if(fila.empty() || fila.front() !== elemento){
                    f = false;
                }else{
                    fila.pop();
                }
            }
            if(fp){
                if(filaDePrioridade.empty() || filaDePrioridade.top()[1] !== elemento){
                    fp = false;
                }else{
                    filaDePrioridade.pop();
                }
            }
        }
    }

    if(p && !f && !fp){
        console.log("stack");
    }else if(!p && f && !fp){
        console.log("queue");
    }else if(!p && !f && fp){
        console.log("priority queue");
    }else if(!p && !f && !fp){
        console.log("impossible");
    }else{
        console.log("not sure");
    } 
}