var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

const TrieNo = class {
    constructor() {
        this.qtd = 0;
        this.maxPalavra = 0;
        this.prox = {};
    }
};

const Trie = class {
    constructor() {
        this.raiz = new TrieNo();
    }

    adicionaPalavra(palavra) {
        let no = this.raiz;
        for (let i = 0; i < palavra.length; ++i) {
            let indice = palavra[i];
            if (no.prox[indice] === undefined) {
                no.prox[indice] = new TrieNo();
            }
            no = no.prox[indice];
            no.qtd += 1;
            no.maxPalavra = Math.max(no.maxPalavra, palavra.length);
        }
    }

    consultaPalavra(palavra) {
        let no = this.raiz;
        for (let i = 0; i < palavra.length; ++i) {
            let indice = palavra[i];
            if (no.prox[indice] === undefined) {
                return [-1, -1];
            }
            no = no.prox[indice];
        }

        return [no.qtd, no.maxPalavra];
    }
}

while (lines.length) {
    let trie = new Trie();

    let N = parseInt(lines.shift().trim());
    for (let i = 0; i < N; ++i) {
        let palavra = lines.shift().trim();
        trie.adicionaPalavra(palavra);
    }

    let Q = parseInt(lines.shift().trim());
    for (let i = 0; i < Q; ++i) {
        let palavra = lines.shift().trim();
        let [qtd, maxPalavra] = trie.consultaPalavra(palavra);

        if (qtd === -1 && maxPalavra === -1) {
            console.log(-1);
        } else {
            console.log(`${qtd} ${maxPalavra}`);
        }
    }
}