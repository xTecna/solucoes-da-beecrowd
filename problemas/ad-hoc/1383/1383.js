var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const verificaLinha = (sudoku, x) => {
    const numeros = new Set(sudoku[x]);
    return numeros.size === 9;
};

const verificaColuna = (sudoku, x) => {
    const numeros = new Set(sudoku.map((linha) => linha[x]));
    return numeros.size === 9;
}

const verificaQuadrado = (sudoku, x) => {
    let numeros = new Set();
    const linha = 3*(Math.floor(x/3)), coluna = 3*(x%3);

    for(let i = 0; i < 3; ++i){
        for(let j = 0; j < 3; ++j){
            numeros.add(sudoku[linha + i][coluna + j]);
        }
    }

    return numeros.size === 9;
}

let n = lines.shift();

for(let k = 1; k <= n; ++k){
    let sudoku = [];

    for(let i = 0; i < 9; ++i){
        sudoku.push(lines.shift().trim().split(' ').map((x) => parseInt(x)));
    }

    console.log(`Instancia ${k}`);

    let resposta = "SIM";
    for(let i = 0; i < 9; ++i){
        if(!verificaLinha(sudoku, i) || !verificaColuna(sudoku, i) || !verificaQuadrado(sudoku, i)){
            resposta = "NAO";
            break;
        }
    }

    console.log(resposta);
    console.log();
}
