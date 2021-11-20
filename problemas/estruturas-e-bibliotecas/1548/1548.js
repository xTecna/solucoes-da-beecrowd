var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

const comp = (a, b) => {
    return b - a;
};

let N = parseInt(lines.shift().trim());

while(lines.length){
    let M = parseInt(lines.shift().trim());

    let original = lines.shift().trim().split(' ').map((x) => parseInt(x));

    let ordenado = [...original];
    ordenado.sort(comp);

    let resposta = original.reduce((acc, cur, i) => original[i] === ordenado[i] ? acc + 1 : acc, 0);

    console.log(resposta);
}
