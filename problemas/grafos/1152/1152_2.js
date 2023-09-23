var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

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
        return b[1] - a[1];
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

const visitaVertice = (visitados, grafo, fila, u) => {
    visitados[u] = true;

    for(let i = 0; i < grafo[u].length; ++i){
        let aresta = grafo[u][i];
        if(!visitados[aresta[0]]){
            fila.push(aresta);
        }
    }
}

const Prim = (grafo, n) => {
    let visitados = [];
    for(let i = 0; i < n; ++i){
        visitados.push(false);
    }

    let fila = new FilaDePrioridade();

    visitaVertice(visitados, grafo, fila, 0);

    let resposta = 0;
    while(!fila.empty()){
        let atual = fila.top();
        fila.pop();

        let [v, peso] = atual;
        if(!visitados[v]){
            resposta += peso;
            visitaVertice(visitados, grafo, fila, v);
        }
    }

    return resposta;
};

let p = 0;
while(p < lines.length){
    let [n, m] = lines[p++].trim().split(' ').map(x => parseInt(x));

    if(n === 0 && m === 0){
        break;
    }

    let grafo = [];
    for(let i = 0; i < n; ++i){
        grafo.push([]);
    }
    let resposta = 0;
    for(let i = 0; i < m; ++i){
        let aresta = lines[p++].trim().split(' ').map(x => parseInt(x));
        grafo[aresta[0]].push([aresta[1], aresta[2]]);
        grafo[aresta[1]].push([aresta[0], aresta[2]]);
        resposta += aresta[2];
    }

    resposta -= Prim(grafo, n);

    console.log(resposta);
}