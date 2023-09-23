var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

class UniaoBusca {
    constructor(n) {
        this.ranking = [];
        this.P = [];
        for(let i = 0; i < n; ++i){
            this.ranking.push(0);
            this.P.push(i);
        }
    }
    
    encontraConjunto(i){
        if(this.P[i] === i){
            return i;
        }
        this.P[i] = this.encontraConjunto(this.P[i]);
        return this.P[i];
    }
    
    mesmoConjunto(i, j){
        return this.encontraConjunto(i) === this.encontraConjunto(j);
    }
    
    uneConjuntos(i, j){
        if(!this.mesmoConjunto(i, j)){
            let [x, y] = [this.encontraConjunto(i), this.encontraConjunto(j)];
            if(this.ranking[x] > this.ranking[y]){
                this.P[y] = x;
            }else{
                this.P[x] = y;
                if(this.ranking[x] == this.ranking[y]){
                    this.ranking[y]++;
                }
            }
        }
    }
}

const comp = (a, b) => a[2] - b[2];

const Kruskal = (grafo, n, m) => {
    let resposta = 0;
    grafo.sort(comp);

    let ub = new UniaoBusca(n);
    for(let i = 0; i < m; ++i){
        let atual = grafo[i];
        if(!ub.mesmoConjunto(atual[0], atual[1])){
            resposta += atual[2];
            ub.uneConjuntos(atual[0], atual[1]);
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
    for(let i = 0; i < m; ++i){
        grafo.push(lines[p++].trim().split(' ').map(x => parseInt(x)));
    }
    let resposta = grafo.reduce((acc, cur) => acc + cur[2], 0);

    resposta -= Kruskal(grafo, n, m);

    console.log(resposta);
}