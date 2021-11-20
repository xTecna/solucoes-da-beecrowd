var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

lines.pop();

respostas = {};
respostas[0] = 1;
respostas[1] = 1;

const H = (n) => {
    if (!(n in respostas)) {
        if (n % 2) respostas[n] = Math.max(n, H(3 * n + 1));
        else respostas[n] = Math.max(n, H(n / 2));
    }

    return respostas[n];
};

while (lines.length) {
    let n = parseInt(lines.shift().trim());

    console.log(H(n));
}
