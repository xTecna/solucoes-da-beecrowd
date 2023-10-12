var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

class No {
    constructor(valor, pai){
        this.valor = valor;
        this.pai = pai;
        this.esq = null;
        this.dir = null;
    }

    adiciona(valor){
        if(valor === this.valor){
            return;
        }
        if(valor < this.valor){
            if(this.esq === null){
                this.esq = new No(valor, this);
            }else{
                this.esq.adiciona(valor);
            }
        }else{
            if(this.dir === null){
                this.dir = new No(valor, this);
            }else{
                this.dir.adiciona(valor);
            }
        }
    }

    busca(valor){
        if(valor === this.valor){
            return this;
        }
        if(valor < this.valor){
            if(this.esq === null){
                return null;
            }
            return this.esq.busca(valor);
        }else{
            if(this.dir === null){
                return null;
            }
            return this.dir.busca(valor);
        }
    }

    remove(){
        if(this.esq === null && this.dir === null){
            if(this.pai !== null){
                if(this.pai.esq === this){
                    this.pai.esq = null;
                }else{
                    this.pai.dir = null;
                }
            }
        }else if(this.esq === null || this.dir === null){
            let filho = this.esq !== null ? this.esq : this.dir;
            if(this.pai !== null){
                if(this.pai.esq === this){
                    this.pai.esq = filho;
                }else{
                    this.pai.dir = filho;
                }
            }
        }else{
            let sucessor = this.dir;
            while(sucessor !== null){
                sucessor = sucessor.esq;
            }
            this.valor = sucessor.valor;
            sucessor.remove();
        }
    }

    prefixa(){
        sb += ` ${this.valor}`;
        if(this.esq !== null){
            this.esq.prefixa();
        }
        if(this.dir !== null){
            this.dir.prefixa();
        }
    }

    infixa(){
        if(this.esq !== null){
            this.esq.infixa();
        }
        sb += ` ${this.valor}`;
        if(this.dir !== null){
            this.dir.infixa();
        }
    }

    posfixa(){
        if(this.esq !== null){
            this.esq.posfixa();
        }
        if(this.dir !== null){
            this.dir.posfixa();
        }
        sb += ` ${this.valor}`;
    }
}

class ArvoreBinaria {
    constructor(){
        this.topo = null;
    }

    adiciona(valor){
        if(this.topo === null){
            this.topo = new No(valor);
        }else{
            this.topo.adiciona(valor);
        }
    }

    busca(valor){
        if(this.topo === null){
            return false;
        }
        return this.topo.busca(valor) !== null;
    }

    remove(valor){
        let no = this.topo.busca(valor);

        if(no !== null && no.pai === null){
            if(no.esq === null && no.dir === null){
                this.topo = null;
            }else if(no.esq !== null || no.dir !== null){
                this.topo = no.esq !== null ? no.esq : no.dir;
            }
        }
        no.remove();
    }

    prefixa(){
        sb += "Pre.:";
        this.topo.prefixa();
        sb += "\n";
    }

    infixa(){
        sb += "In..:";
        this.topo.infixa();
        sb += "\n";
    }

    posfixa(){
        sb += "Post:";
        this.topo.posfixa();
        sb += "\n";
    }
}

let p = 0;
let sb = "";
let C = parseInt(lines[p++]);
for(let k = 1; k <= C; ++k){
    let N = parseInt(lines[p++]);
    let v = lines[p++].trim().split(" ").map(x => parseInt(x));

    let ab = new ArvoreBinaria();
    for(let i = 0; i < N; ++i){
        ab.adiciona(v[i]);
    }

    sb += `Case ${k}:\n`;
    ab.prefixa();
    ab.infixa();
    ab.posfixa();
    sb += "\n";
}

sb = sb.substring(0, sb.length - 1);
console.log(sb);