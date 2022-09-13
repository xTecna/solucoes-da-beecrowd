var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');
lines.pop();

let p = 0;
while (p < lines.length) {
    let entrada = lines[p++].trim();
    let P = entrada.split('');

    if (entrada !== '0') {
        let n = P.length - 1;
        while (P[n] === '0') {
            P[n--] = '9';
        }
        P[n] = (parseInt(P[n]) - 1).toString();
    }

    if (entrada.length > 1 && P[0] === '0') {
        P = P.splice(1);
    }

    console.log(P.join(''));
}