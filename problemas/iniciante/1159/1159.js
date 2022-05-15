var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let somaPA = (a0) => {
    a0 += (Math.abs(a0) % 2);
    let an = a0 + 8;
    let n = 5;

    return Math.floor(((a0 + an) * n) / 2);
};

while (lines.length) {
    let X = parseInt(lines.shift());

    if (X === 0) {
        break;
    }

    console.log(somaPA(X));
}