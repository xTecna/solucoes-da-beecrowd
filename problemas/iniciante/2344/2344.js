var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const conceito = (nota) => {
    if (nota > 85) {
        return 'A';
    }
    if (nota > 60) {
        return 'B';
    }
    if (nota > 35) {
        return 'C';
    }
    if (nota > 0) {
        return 'D';
    }
    return 'E';
};

let N = parseInt(lines.shift());
console.log(conceito(N));