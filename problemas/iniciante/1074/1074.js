var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N = parseInt(lines.shift());

for (let i = 0; i < N; ++i) {
    let X = parseInt(lines.shift());

    let retorno = "";
    if (X === 0) {
        retorno += "NULL";
    } else if (X > 0) {
        if (X % 2) {
            retorno += "ODD";
        } else {
            retorno += "EVEN";
        }
        retorno += " POSITIVE";
    } else {
        if (-X % 2) {
            retorno += "ODD";
        } else {
            retorno += "EVEN";
        }
        retorno += " NEGATIVE";
    }

    console.log(retorno);
}