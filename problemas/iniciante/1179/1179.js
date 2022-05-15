var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let imprime = (nome, vetor) => {
    for (let i = 0; i < vetor.length; ++i) {
        console.log(`${nome}[${i}] = ${vetor[i]}`);
    }
};

let impar = [];
let par = [];
for (let i = 0; i < 15; ++i) {
    let valor = parseInt(lines.shift());

    if (Math.abs(valor) % 2) {
        impar.push(valor);

        if (impar.length === 5) {
            imprime("impar", impar);
            impar = [];
        }
    } else {
        par.push(valor);

        if (par.length === 5) {
            imprime("par", par);
            par = [];
        }
    }
}

imprime("impar", impar);
imprime("par", par);