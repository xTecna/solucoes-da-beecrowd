var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

const soma = (expressao) => expressao[0] + expressao[1] === expressao[2];
const subtracao = (expressao) => expressao[0] - expressao[1] === expressao[2];
const multiplicacao = (expressao) => expressao[0] * expressao[1] === expressao[2];

while (lines.length) {
    let T = parseInt(lines.shift().trim());

    let expressoes = [];
    for (let i = 0; i < T; ++i) {
        let [X, YZ] = lines.shift().trim().split(' ');
        YZ = YZ.trim().split('=').map(x => parseInt(x));
        expressoes.push([parseInt(X), YZ[0], YZ[1]]);
    }

    let errados = [];
    for (let i = 0; i < T; ++i) {
        let [nome, E, operador] = lines.shift().trim().split(' ');
        E = parseInt(E);

        switch (operador) {
            case '+': if (!soma(expressoes[E - 1])) {
                errados.push(nome);
            }
                break;
            case '-': if (!subtracao(expressoes[E - 1])) {
                errados.push(nome);
            }
                break;
            case '*': if (!multiplicacao(expressoes[E - 1])) {
                errados.push(nome);
            }
                break;
            case 'I': if (soma(expressoes[E - 1]) || subtracao(expressoes[E - 1]) || multiplicacao(expressoes[E - 1])) {
                errados.push(nome);
            }
                break;
        }
    }

    if (errados.length === 0) {
        console.log('You Shall All Pass!');
    } else if (errados.length === T) {
        console.log('None Shall Pass!');
    } else {
        errados.sort();
        console.log(errados.join(' '));
    }
}