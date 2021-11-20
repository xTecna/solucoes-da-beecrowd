class TabelaHash:
    def __init__(self, M):
        self.M = M
        self.tabela = [[] for _ in range(self.M)]

    def funcaoHash(self, valor):
        return valor % self.M

    def adiciona(self, valor):
        self.tabela[self.funcaoHash(valor)].append(str(valor))

    def imprime(self):
        for i in range(self.M):
            if(len(self.tabela[i]) > 0):
                lista = ' -> '.join(self.tabela[i])
                print(f'{i} -> {lista} -> \\')
            else:
                print(f'{i} -> \\')


N = int(input())

for i in range(N):
    if(i):
        print('')

    M, C = [int(x) for x in input().strip().split(' ')]
    numeros = [int(x) for x in input().strip().split(' ')]

    tabelaHash = TabelaHash(M)
    for numero in numeros:
        tabelaHash.adiciona(numero)
    tabelaHash.imprime()var input = require('fs').readFileSync('/dev/stdin', 'utf8');
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
}var input = require('fs').readFileSync('/dev/stdin', 'utf8');
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
}var input = require('fs').readFileSync('/dev/stdin', 'utf8');
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
}var input = require('fs').readFileSync('/dev/stdin', 'utf8');
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
