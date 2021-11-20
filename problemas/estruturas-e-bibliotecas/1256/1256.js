var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

class TabelaHash{
    constructor(M){
        this.M = M;
        this.tabela = Array(M);
        for(let i = 0; i < this.M; ++i){
            this.tabela[i] = [];
        }
    }

    funcaoHash(valor){
        return valor % this.M;
    }

    adiciona(valor){
        this.tabela[this.funcaoHash(valor)].push(valor);
    }

    imprime(){
        for(let i = 0; i < this.M; ++i){
            if(this.tabela[i].length > 0){
                console.log(`${i} -> ${this.tabela[i].join(' -> ')} -> \\`);
            }else{
                console.log(`${i} -> \\`);
            }
        }
    }
}

N = parseInt(lines.shift());

for(let k = 0; k < N; ++k){
    if(k)   console.log();

    let [M, C] = lines.shift().trim().split(' ').map((x) => parseInt(x));
    let numeros = lines.shift().trim().split(' ').map((x) => parseInt(x));

    th = new TabelaHash(M);
    numeros.map((x) => th.adiciona(x));
    th.imprime();
}
